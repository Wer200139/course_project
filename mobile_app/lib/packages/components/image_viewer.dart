import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/chat/chat_details/bloc/message/message_bloc.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/chats/models/attachment_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class CwImage extends StatefulWidget {
  final String? path;
  final List<AttachmentModel> images;
  final String attachmentId;
  final double borderRadius;
  final bool isTappable;

  const CwImage({
    required this.path,
    required this.attachmentId,
    required this.images,
    this.isTappable = false,
    this.borderRadius = 10,
    super.key,
  });

  @override
  State<CwImage> createState() => _CwImageState();
}

class _CwImageState extends State<CwImage> {
  FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  String? authToken;

  Future<String?> _loadAuthToken() async {
    return await secureStorage.read(key: SecureStorageKeys.authToken.name);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadAuthToken(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          authToken = snapshot.data;
          return GestureDetector(
            onTap: widget.isTappable
                ? () => CustomNavigator.showModal(
                      context: context,
                      child: BlocProvider(
                        create: (context) => MessageBloc(
                          chatRepository: ChatRepository(
                            mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                          ),
                          snackBarRepository: CustomInjector.find<SnackBarRepository>(),
                        ),
                        child: CWImageViewer(
                          attachmentId: widget.attachmentId,
                          images: widget.images,
                          fullPath: '${widget.path}',
                        ),
                      ),
                    )
                : null,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
              child: CachedNetworkImage(
                httpHeaders: {'Authorization': 'Bearer $authToken'},
                height: 120,
                fit: BoxFit.cover,
                imageUrl: '${widget.path}',
                progressIndicatorBuilder: (context, url, downloadProgress) => Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class CWImageViewer extends StatefulWidget {
  final String attachmentId;
  final List<AttachmentModel> images;
  final Uint8List? image;
  final String? fullPath;

  const CWImageViewer({
    required this.attachmentId,
    required this.images,
    this.image,
    this.fullPath,
    super.key,
  });

  @override
  State<CWImageViewer> createState() => _CWImageViewerState();
}

class _CWImageViewerState extends State<CWImageViewer> {
  FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  String? authToken;

  Future<String?> _loadAuthToken() async {
    return await secureStorage.read(key: SecureStorageKeys.authToken.name);
  }

  int _currentPhotoNumber = 0;
  late int _initialPhotoIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _initialPhotoIndex = widget.images.indexWhere((element) => element.id == widget.attachmentId);
    _currentPhotoNumber = _initialPhotoIndex;
    _pageController = PageController(initialPage: _currentPhotoNumber);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadAuthToken(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          authToken = snapshot.data;
          return Scaffold(
            appBar: CwAppBar(
              backgroundColor: CwColors.primary,
              title: SvgPicture.asset(height: 18, width: 18, Assets.imageCLOKWISE, color: CwColors.customWhite),
              leading: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: CwIconButton(
                  width: 30,
                  height: 30,
                  borderRadius: 6,
                  icon: SvgPicture.asset(Assets.imageArrowLeft),
                  onTap: () => CustomNavigator.pop(),
                  backgroundColor: CwColors.subButtonInverse,
                ),
              ),
              actions: [
                CwIconButton(
                  icon: const Icon(Icons.download),
                  onTap: () => BlocProvider.of<MessageBloc>(context).add(
                    MessageEvent.downloadFileRequested(attachmentId: widget.images[_currentPhotoNumber].id),
                  ),
                ),
              ],
            ),
            body: Container(
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  PhotoViewGallery.builder(
                    scrollPhysics: const BouncingScrollPhysics(),
                    itemCount: widget.images.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPhotoNumber = index;
                      });
                    },
                    pageController: _pageController,
                    builder: (context, index) {
                      if (widget.image == null) {
                        return PhotoViewGalleryPageOptions(
                          imageProvider: CachedNetworkImageProvider(
                              'https://depl1.prod.sold.su/api/chats/get-attachment/${widget.images[index].id}',
                              headers: {'Authorization': 'Bearer $authToken'}),
                          initialScale: PhotoViewComputedScale.contained,
                          minScale: PhotoViewComputedScale.contained * 0.6,
                          maxScale: PhotoViewComputedScale.covered * 1.8,
                        );
                      } else {
                        return PhotoViewGalleryPageOptions(
                          imageProvider: MemoryImage(widget.image!),
                          initialScale: PhotoViewComputedScale.contained,
                          minScale: PhotoViewComputedScale.contained * 0.6,
                          maxScale: PhotoViewComputedScale.covered * 1.8,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

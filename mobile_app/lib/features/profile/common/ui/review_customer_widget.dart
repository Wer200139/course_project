import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/features/profile/common/ui/stars_widget.dart';
import 'package:clokwise/features/profile/profile_info/bloc/profile_info_bloc.dart';
import 'package:clokwise/features/repositories/profile/profile_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:easy_infinite_pagination/easy_infinite_pagination.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewCustomerWidget extends StatefulWidget {
  final int id;
  final bool isExpert;

  const ReviewCustomerWidget({
    super.key,
    required this.id,
    required this.isExpert,
  });

  @override
  State<ReviewCustomerWidget> createState() => _ReviewCustomerWidgetState();
}

class _ReviewCustomerWidgetState extends State<ReviewCustomerWidget> {
  bool isMax = true;
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileInfoBloc>(
      create: (_) => ProfileInfoBloc(
        snackBarRepository: CustomInjector.find<SnackBarRepository>(),
        profileRepository: ProfileRepository(
          mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
        ),
      )..add(ProfileInfoEvent.getReviewsRequested(id: widget.id, isExpert: widget.isExpert)),
      child: BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
        buildWhen: (context, state) =>
            state.maybeMap(loading: (_) => true, error: (_) => true, succesReviews: (_) => true, orElse: () => false),
        builder: (context, state) => state.maybeMap(
          error: (state) => Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: CwColors.customWhite,
            ),
            child: const Center(
              child: Text('Произошла ошибка'),
            ),
          ),
          succesReviews: (state) => state.review.count > 0
              ? Column(
                  children: [
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: CwColors.customWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Оценки пользователей',
                            style: CwTextStyles.headerModal,
                          ),
                          const SizedBox(height: 12),
                          const Divider(color: CwColors.bgGray),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.review.count >= 2 ? 2 : 1,
                            separatorBuilder: (context, index) => const Divider(color: CwColors.bgGray),
                            itemBuilder: (context, index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: <Widget>[
                                    const AvatarImage(
                                      diameter: 48,
                                    ),
                                    const SizedBox(width: 4),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 12),
                                                  Text(
                                                    state.review.results[index].name,
                                                    style: CwTextStyles.nameTextComment,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  StarsWidget(score: state.review.results[index].rating),
                                                ],
                                              ),
                                              const SizedBox(width: 80),
                                              Text(
                                                DateFormat('dd.MM.yyyy').format(state.review.results[index].datetimeCreated.toLocal()),
                                                style: CwTextStyles.timeWidget,
                                              ),
                                              const SizedBox(width: 4),
                                            ],
                                          ),
                                          const SizedBox(height: 12),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(
                                    state.review.results[index].text,
                                    style: CwTextStyles.textComment,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (state.review.count > 2) ...[
                            Center(
                              child: CwTextButton(
                                isSmall: true,
                                text: !showAll ? 'Показать все (${state.review.count - 2})' : 'Скрыть',
                                icon: showAll ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                padding: const EdgeInsets.only(left: 0, right: 2),
                                onTap: () => setState(() {
                                  showAll = !showAll;
                                }),
                                textStyle: CwTextStyles.activatedButton.merge(
                                  const TextStyle(fontSize: 14, color: CwColors.primary),
                                ),
                              ),
                            ),
                          ],
                          if (showAll) ...[
                            const SizedBox(height: 12),
                            InfiniteListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              delegate: PaginationDelegate(
                                fetchDataOnStart: false,
                                hasReachedMax: isMax,
                                loadMoreLoadingBuilder: (context) => const SizedBox(),
                                onFetchData: () => state.review.next != null
                                    ? {
                                        setState(() {
                                          isMax = false;
                                        }),
                                        BlocProvider.of<ProfileInfoBloc>(context).add(
                                          ProfileInfoEvent.getReviewsNextPageRequested(
                                            id: widget.id,
                                            isExpert: widget.isExpert,
                                            page: int.parse(
                                              state.review.next!.substring(
                                                state.review.next!.lastIndexOf('page=') + 5,
                                              ),
                                            ),
                                          ),
                                        ),
                                      }
                                    : setState(() {
                                        isMax = true;
                                      }),
                                itemCount: state.review.results.length - 2,
                                itemBuilder: (context, index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        const AvatarImage(
                                          diameter: 48,
                                        ),
                                        const SizedBox(width: 4),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 4),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  const SizedBox(width: 12),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const SizedBox(height: 12),
                                                      Text(
                                                        state.review.results[index + 2].name,
                                                        style: CwTextStyles.nameTextComment,
                                                      ),
                                                      const SizedBox(height: 4),
                                                      StarsWidget(score: state.review.results[index + 2].rating),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 80),
                                                  Text(
                                                    DateFormat('dd.mm.yyyy').format(state.review.results[index + 2].datetimeCreated),
                                                    style: CwTextStyles.timeWidget,
                                                  ),
                                                  const SizedBox(width: 4),
                                                ],
                                              ),
                                              const SizedBox(height: 12),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        state.review.results[index + 2].text,
                                        style: CwTextStyles.textComment,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              separatorBuilder: (context, index) => const SizedBox(height: 4),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox(),
          orElse: () => const SizedBox(),
        ),
      ),
    );
  }
}

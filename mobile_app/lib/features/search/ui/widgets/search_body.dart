import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/cw_refresh_indicator.dart';
import 'package:clokwise/common/utils/vars.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/chat/chat_details/ui/chat_details_page.dart';
import 'package:clokwise/features/profile/profile_info/ui/profile_page.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/repositories/search/request/search_request.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/search/bloc/search_bloc.dart';
import 'package:clokwise/features/search/ui/modals/invite_dialog.dart';
import 'package:clokwise/features/search/ui/modals/premium_invite_dialog.dart';
import 'package:clokwise/features/search/ui/search_page.dart';
import 'package:clokwise/features/search/ui/widgets/avatar_search_widget.dart';
import 'package:clokwise/features/search/ui/widgets/search_expert_item.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/snackbar/ui/show_snack_bar.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/cw_multi_dropdown.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/my_flutter_app_icons.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

final formKeyScreen = GlobalKey<FormState>();

class SearchBody extends StatefulWidget {
  final bool isPremium;

  const SearchBody({super.key, required this.isPremium});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final _searchExpertController = FormControl<String>(
    value: '',
    //validators: ValidatorSets.password.validators,
  );
  final _experienceController = ExpansionTileController();
  final _industryController = ExpansionTileController();
  final _functionController = ExpansionTileController();

  bool _isSearch = false;
  bool _isSelectMore = false;
  bool _isReady = false;

  String _industryTitle = '';
  String _functionTitle = '';
  String _experienceTitle = '';

  int countResult = 0;
  List<int> selectedUsers = [];

  int _experience = -1;
  int industryId = 0;
  int subindustryId = 0;
  int functionId = 0;
  int subfunctionId = 0;

  List<ClassificatorModel> industryItems = [];
  List<ClassificatorModel> subindustryItems = [];
  List<ClassificatorModel> functionItems = [];
  List<ClassificatorModel> subfunctionItems = [];

  void clearFields() {
    _experience = -1;
    industryId = 0;
    subindustryId = 0;
    functionId = 0;
    subfunctionId = 0;
    _experienceTitle = '';
    _industryTitle = '';
    _functionTitle = '';
    _searchExpertController.value = '';
    subindustryItems.clear();
    functionItems.clear();
    subfunctionItems.clear();
    countResult = 0;

    setState(() {
      _isReady = false;
      _isSearch = false;
    });
  }

  bool getFormReady() {
    bool isFieldReady = _searchExpertController.value!.isNotEmpty;
    bool isIndustryReady = industryId > -1;

    return isFieldReady || isIndustryReady;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyScreen,
      child: BlocConsumer<SearchBloc, SearchState>(
        listener: (context, state) => state.mapOrNull(
          initial: (_) => clearFields(),
          success: (state) => setState(() {
            countResult = state.experts.length;
            _isSearch = true;
          }),
          successGetIndustries: (state) => setState(() {
            industryItems.clear();

            for (var ind in state.industries) {
              industryItems.add(ind);
            }
          }),
          successGetSubindustries: (state) => setState(() {
            subindustryItems.clear();
            functionItems.clear();
            subfunctionItems.clear();

            for (var subind in state.subindustries) {
              subindustryItems.add(subind);
            }

            for (var func in state.functions) {
              functionItems.add(func);
            }

            for (var subfunc in state.subfunctions) {
              subfunctionItems.add(subfunc);
            }
          }),
          successGetFunctions: (state) => setState(() {
            functionItems.clear();

            for (var ind in state.functions) {
              functionItems.add(ind);
            }
          }),
          successGetSubfunctions: (state) => setState(() {
            subfunctionItems.clear();

            for (var ind in state.subfunctions) {
              subfunctionItems.add(ind);
            }
          }),
          successStartChat: (state) => {
            CustomNavigator.showModal(
              context: context,
              child: ChatDetailsPage(
                id: state.chatId,
              ),
            )
          },
        ),
        buildWhen: (context, state) => state.maybeMap(
          success: (_) => true,
          successGetIndustries: (_) => false,
          successGetSubindustries: (_) => false,
          successGetFunctions: (_) => false,
          successGetSubfunctions: (_) => false,
          successStartChat: (_) => false,
          orElse: () => true,
        ),
        builder: (context, state) => CWRefreshIndicator(
          onRefresh: _isReady
              ? () => {
                    BlocProvider.of<SearchBloc>(context).add(
                      SearchEvent.searchResultRequested(
                        request: SearchRequest(
                          industry: industryId != 0 ? industryId : null,
                          subindustry: subindustryId != 0 ? subindustryId : null,
                          function: functionId != 0 ? functionId : null,
                          subfunction: subfunctionId != 0 ? subfunctionId : null,
                          prompt: _searchExpertController.value!.isNotEmpty ? _searchExpertController.value : null,
                          experience: _experience > 0 ? _experience : null,
                        ),
                      ),
                    )
                  }
              : null,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 14),
                      CwMultiDropdown(
                        label: 'Опыт работы',
                        title: _experienceTitle,
                        controller: _experienceController,
                        elements: WorkExperience.values
                            .map((experience) => ListTile(
                                  title: Text(experience.label),
                                  onTap: () => setState(() {
                                    _experienceTitle = experience.label;
                                    _experience = experience.value;
                                    _experienceController.collapse();
                                  }),
                                ))
                            .toList(),
                      ),
                      const SizedBox(height: 12),
                      if (_experience >= 0) ...[
                        CwMultiDropdown(
                          label: 'Отрасль',
                          title: _industryTitle,
                          controller: _industryController,
                          elements: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: industryItems.length,
                              itemBuilder: (context, index) => ExpansionTile(
                                title: Text(
                                  industryItems[index].name,
                                  style: CwTextStyles.textField,
                                ),
                                onExpansionChanged: (expanded) {
                                  if (expanded) {
                                    if (industryId != industryItems[index].id) {
                                      BlocProvider.of<SearchBloc>(context).add(
                                        SearchEvent.getSubindustries(id: industryItems[index].id),
                                      );
                                    }

                                    setState(() {
                                      industryId = industryItems[index].id;
                                      _industryTitle = industryItems[index].name;
                                      _isReady = getFormReady();
                                    });
                                  }
                                },
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: subindustryItems.length,
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () {
                                        setState(() {
                                          if (subindustryId != subindustryItems[index].id) {
                                            BlocProvider.of<SearchBloc>(context).add(
                                              SearchEvent.getFunctions(id: subindustryItems[index].id),
                                            );
                                          }

                                          subindustryId = subindustryItems[index].id;
                                          _industryTitle = '${industryItems[index].name}, ${subindustryItems[index].name}';
                                          _industryController.collapse();
                                        });
                                      },
                                      title: Text(subindustryItems[index].name),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                      ],
                      if (functionItems.isNotEmpty) ...[
                        CwMultiDropdown(
                          label: 'Функция',
                          title: _functionTitle,
                          controller: _functionController,
                          elements: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: functionItems.length,
                              itemBuilder: (context, index) => ExpansionTile(
                                title: Text(
                                  functionItems[index].name,
                                  style: CwTextStyles.textField,
                                ),
                                onExpansionChanged: (expanded) {
                                  if (expanded) {
                                    if (functionId != functionItems[index].id) {
                                      BlocProvider.of<SearchBloc>(context).add(
                                        SearchEvent.getSubfunctions(id: functionItems[index].id),
                                      );
                                    }

                                    setState(() {
                                      functionId = functionItems[index].id;
                                      _functionTitle = functionItems[index].name;
                                    });
                                  }
                                },
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: subfunctionItems.length,
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () {
                                        setState(() {
                                          subfunctionId = subfunctionItems[index].id;
                                          _functionTitle = '${functionItems[index].name}, ${subfunctionItems[index].name}';
                                          _functionController.collapse();
                                        });
                                      },
                                      title: Text(subfunctionItems[index].name),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                      ],
                      CwTextField(
                        controller: _searchExpertController,
                        hintText: 'Найти специалиста',
                        hintStyle: CwTextStyles.labelTextField.merge(
                          const TextStyle(color: CwColors.subText),
                        ),
                        filled: true,
                        fillColor: CwColors.customWhite,
                        onChanged: (_) => setState(() {
                          _isReady = getFormReady();
                        }),
                        maxLines: 1,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            Assets.imageSearch,
                            width: 4,
                            height: 4,
                          ),
                        ),
                        topPadding: 0,
                      ),
                      CwElevatedButton(
                        heightStyle: CwButtonHeightEnum.standard,
                        text: 'Найти эксперта',
                        block: true,
                        onTap: _isReady
                            ? () => {
                                  BlocProvider.of<SearchBloc>(context).add(
                                    SearchEvent.searchResultRequested(
                                      request: SearchRequest(
                                          industry: industryId != 0 ? industryId : null,
                                          subindustry: subindustryId != 0 ? subindustryId : null,
                                          function: functionId != 0 ? functionId : null,
                                          subfunction: subfunctionId != 0 ? subfunctionId : null,
                                          prompt: _searchExpertController.value!.isNotEmpty ? _searchExpertController.value : null,
                                          experience: _experience > 0 ? _experience : null),
                                    ),
                                  )
                                }
                            : null,
                      ),
                      if (_isSearch) ...[
                        const SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Найдено $countResult эксперта',
                              style: CwTextStyles.nameTextComment,
                            ),
                            CwTextButton(
                              text: 'Сбросить фильтры',
                              icon: Icons.refresh,
                              onTap: () => clearFields(),
                              primaryColor: CwColors.error,
                              textStyle: CwTextStyles.errorTextField.merge(
                                const TextStyle(fontSize: 14, color: CwColors.error),
                              ),
                            ),
                          ],
                        ),
                      ],
                      const SizedBox(height: 18),
                      if (_isSelectMore == false && _isSearch) ...[
                        const SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                            color: CwColors.customWhite,
                          ),
                          child: CwTextButton(
                            text: 'Выбрать несколько экспертов',
                            textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                            backgroundColor: CwColors.subButton,
                            block: true,
                            icon: MyFlutterApp.refresh,
                            image: SvgPicture.asset(Assets.imageMultiple, width: 20),
                            iconSize: 18,
                            onTap: () => setState(() {
                              _isSelectMore = !_isSelectMore;
                            }),
                          ),
                        ),
                      ] else if (_isSearch && _isSelectMore == true) ...[
                        const SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                            color: CwColors.customWhite,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: CwElevatedButton(
                                  heightStyle: CwButtonHeightEnum.standard,
                                  text: 'Отправить приглашение',
                                  block: true,
                                  onTap: selectedUsers.isNotEmpty
                                      ? () => {
                                            showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (dialogContext) {
                                                if (widget.isPremium) {
                                                  return BlocProvider(
                                                    create: (dialogContext) => TaskBloc(
                                                      chatRepository: ChatRepository(
                                                        mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                                      ),
                                                      taskRepository: TaskRepository(
                                                        mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                                      ),
                                                      snackBarRepository: CustomInjector.find<SnackBarRepository>(),
                                                      classificatorRepository: ClassificatorRepository(
                                                        mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                                      ),
                                                    )..add(const TaskEvent.getTasksCustomerRequested()),
                                                    child: InviteDialog(ids: selectedUsers),
                                                  );
                                                } else {
                                                  return BlocProvider<PaymentBloc>.value(
                                                    value: context.read<PaymentBloc>(),
                                                    child: PremiumInviteDialog(),
                                                  );
                                                }
                                              },
                                            ),
                                          }
                                      : null,
                                ),
                              ),
                              CwIconButton(
                                icon: SvgPicture.asset(Assets.imageCansel),
                                backgroundColor: CwColors.bgGray,
                                borderRadius: 8,
                                margin: const EdgeInsets.only(left: 4),
                                onTap: () => setState(() {
                                  _isSelectMore = false;
                                  selectedUsers.clear();
                                }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: DecoratedSliver(
                  decoration: const BoxDecoration(
                    color: CwColors.customWhite,
                  ),
                  sliver: SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    sliver: BlocBuilder<SearchBloc, SearchState>(
                      buildWhen: (context, state) => state.maybeMap(
                        initial: (_) => true,
                        success: (_) => true,
                        orElse: () => false,
                      ),
                      builder: (context, state) => state.maybeMap(
                        success: (state) => SliverList.builder(
                            itemCount: countResult,
                            itemBuilder: (context, index) {
                              if (GlobalVars.currentUserId != state.experts[index].id) {
                                return SearchExpertItem(
                                  isChosen: selectedUsers.contains(state.experts[index].id),
                                  relevantExperience: state.experts[index].relevantExperience % 1 == 0
                                      ? '${state.experts[index].relevantExperience.toInt()} года'
                                      : '${state.experts[index].relevantExperience.toStringAsFixed(1)} года',
                                  totalExperience: state.experts[index].totalExperience % 1 == 0
                                      ? '${state.experts[index].totalExperience.toInt()} года'
                                      : '${state.experts[index].totalExperience.toStringAsFixed(1)} года',
                                  chatId: state.experts[index].chatId,
                                  avatar: state.experts[index].avatar?.image,
                                  name: state.experts[index].firstName,
                                  rating: state.experts[index].rating,
                                  userId: state.experts[index].id,
                                  onTap: _isSelectMore
                                      ? () => setState(() {
                                            if (!selectedUsers.contains(state.experts[index].id)) {
                                              selectedUsers.add(state.experts[index].id);
                                            } else {
                                              selectedUsers.remove(state.experts[index].id);
                                            }
                                          })
                                      : () => CustomNavigator.showModal(
                                            context: context,
                                            child: ProfilePage(userId: state.experts[index].id),
                                          ),
                                );
                              }

                              return const SizedBox();
                            }),
                        orElse: () => const SliverPadding(
                          padding: EdgeInsets.symmetric(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum WorkExperience {
  noExperience(0, 'Опыт не важен'),
  oneYear(1, 'От 1 года'),
  threeYears(3, 'От 3 лет'),
  fiveYears(5, 'От 5 лет'),
  tenPlusYears(10, 'От 10 лет');

  final int value;
  final String label;

  const WorkExperience(this.value, this.label);
}

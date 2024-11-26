import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/auth/ui/widgets/category_job_widget.dart';
import 'package:clokwise/features/auth/ui/widgets/end_search_widget.dart';
import 'package:clokwise/features/auth/ui/widgets/green_box_widget.dart';
import 'package:clokwise/features/auth/ui/widgets/how_work_widget.dart';
import 'package:clokwise/features/auth/ui/widgets/how_work_widget_var2.dart';
import 'package:clokwise/features/auth/ui/widgets/modals/auth_dialog.dart';
import 'package:clokwise/features/auth/ui/widgets/reason_widget.dart';
import 'package:clokwise/features/auth/ui/widgets/start_search_widget.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return CWScaffold(
      appBar: CwAppBar(
        onTapLeading: () => {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return BlocProvider<AuthBloc>.value(
                value: context.read<AuthBloc>(),
                child: const AuthDialog(),
              );
            },
          )
        },
        backgroundColor: CwColors.customWhite,
        title: SvgPicture.asset(Assets.imageCLOKWISE),
        actions: [
          Row(
            children: [
              const Text(
                'Ru',
                style: TextStyle(color: CwColors.primary),
              ),
              CwIconButton(
                icon: SvgPicture.asset(
                  Assets.imageDown,
                  color: CwColors.primary,
                ),
                onTap: () {},
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StartSearchWidget(),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'КАК ЭТО РАБОТАЕТ?',
                textDirection: TextDirection.ltr,
                style: CwTextStyles.header1.merge(
                  const TextStyle(fontSize: 32),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 4),
              child: Text(
                'Чтобы найти нужного вам специалиста, вам нужно\nвыбрать отрасль и функцию из списка на нашем сайте',
                textDirection: TextDirection.ltr,
                style: CwTextStyles.headerSubText,
              ),
            ),
            const SizedBox(height: 28),
            const HowWorkWidget(),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                'ИЛИ',
                textDirection: TextDirection.ltr,
                style: CwTextStyles.header1.merge(
                  const TextStyle(fontSize: 32),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const HowWorkWidgetVar2(),
            const SizedBox(height: 48),
            const GreenBoxWidget(),
            const SizedBox(height: 12),
            const CategoryJobWidget(
              title: 'Медицина',
              assetName: Assets.imageHeart,
              tags: [
                'Педиатрия',
                'Стоматология',
                'Пульмонология',
                'Психиатрия'
              ],
            ),
            const CategoryJobWidget(
              title: 'Лесная промышленность',
              assetName: Assets.imageTree,
              tags: [
                'Деревообработка и производство древ. мат.',
                'Химическая промышленность на основе леса',
              ],
            ),
            const CategoryJobWidget(
              title: 'Транспорт',
              assetName: Assets.imageCar,
              tags: [
                'Автомобильный транспорт',
                'Авиационный транспорт',
                'Железнодорожный транспорт',
                'Морской транспорт'
              ],
            ),
            const CategoryJobWidget(
              title: 'Маркетинг, реклама, PR',
              assetName: Assets.imageMarketing,
              tags: [
                'Исследование рынка',
                'Рекламные компании',
                'Разработка маркетинговой стратегии',
                'Мерчандайзинг'
              ],
            ),
            const CategoryJobWidget(
              title: 'Продажи',
              assetName: Assets.imageSales,
              tags: ['B2B', 'B2C', 'B2G', 'Разработка стратегии продаж'],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                    height: 200,
                    fit: BoxFit.fitHeight,
                    'https://memepedia.ru/wp-content/uploads/2017/04/61092-YzljOWQ3ZWQ2YQ.gif'),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: CwColors.customWhite,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    'Не нашли нужного специалиста через самостоятельный поиск?',
                    style: CwTextStyles.headerWidget
                        .merge(const TextStyle(fontSize: 20)),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                      'Просто сформируйте заявку, сервис разошлет уведомления всем подходящим специалистам. Откликнувшиеся эксперты ответят Вам в личном чате приложения.',
                      style: CwTextStyles.textWidget),
                  const SizedBox(height: 16),
                  CwElevatedButton(
                    text: 'Создать заявку',
                    block: true,
                    onTap: () => {},
                    heightStyle: CwButtonHeightEnum.standard,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text('Почему нужно выбрать нас?'.toUpperCase(),
                  style: CwTextStyles.header1),
            ),
            const SizedBox(height: 60),
            ReasonWidget(
              title: 'Быстрый доступ',
              description:
                  'Вы можете получить список подходящих специалистов уже через несколько минут после подачи заявки останется только начать общение.',
              assetsName: Assets.imageQuick,
            ),
            const SizedBox(height: 46),
            ReasonWidget(
              title: 'Гибкость и удобство',
              description:
                  'Вы можете выбирать нужного вам специалиста на основе нескольких критериев. Кроме того заявка — это папка с вложенными в неё чатами экспертов. Поэтому легко вести параллельные беседы.',
              assetsName: Assets.imageFlex,
            ),
            const SizedBox(height: 46),
            ReasonWidget(
              title: 'Конфиденциальность',
              description:
                  'Эксперты могут не раскрывать личных контактов. Их опыт подтверждает сервис (статус «Подтверждённый опыт»)',
              assetsName: Assets.imageLock,
            ),
            const SizedBox(height: 46),
            ReasonWidget(
              title: 'Бесплатный поиск и взаимодействие',
              description:
                  'Мы формируем крупнейшую базу межотраслевых компетенций и сделать её доступной — такого ещё никто не делал',
              assetsName: Assets.imageStroke,
            ),
            const SizedBox(height: 96),
            EndSearchWidget()
          ],
        ),
      ),
    );
  }
}

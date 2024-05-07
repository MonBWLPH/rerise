import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class OurCertificationsHome extends StatelessWidget
    implements PreferredSizeWidget {
  const OurCertificationsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: MediaQuery.of(context).size.width < 900 ? 10 : 250, //นอน
            runSpacing: 50, //ตั้ง
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width < 700 ? 30 : 30,
                  left: MediaQuery.of(context).size.width < 700 ? 30
                      : MediaQuery.of(context).size.width < 800 ? 30
                      : MediaQuery.of(context).size.width < 1318 ? 30
                      : 120,
                  top: 50,
                  bottom: 0,
                ),
                child: Container(
                  //color: Colors.blue,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.home_why_choose.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        LocaleKeys.home_our_certifications.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.onError),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width < 700 ? 30
                      : MediaQuery.of(context).size.width < 1300 ? 10: 200,
                  left: MediaQuery.of(context).size.width < 700 ? 30 : 30,
                  top: 50,
                  bottom: 50,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width < 900
                      ? 400
                      : MediaQuery.of(context).size.width < 1700
                          ? 400
                          : 700,
                  //color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.home_why_detailsA.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        LocaleKeys.home_why_detailsB.tr(),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        LocaleKeys.home_why_detailsC.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width <= 870
                              ? 0
                              :MediaQuery.of(context).size.width <= 1100
                              ? 10
                              :MediaQuery.of(context).size.width <= 1300
                              ? 30
                              :MediaQuery.of(context).size.width <= 1669
                              ? 200
                              :120, 
                              
                              right: MediaQuery.of(context).size.width <= 870
                              ? 0
                              :MediaQuery.of(context).size.width <= 1100
                              ? 10
                              :MediaQuery.of(context).size.width <= 1300
                              ? 30
                              :MediaQuery.of(context).size.width <= 1669
                              ? 200
                              :120, 
                              ),
            child: Wrap(
              children: [
                Image.asset(
                  'assets/image_certifications/Frame 1261153060.png',
                  width: 170,
                ), // 1
                Image.asset(
                  'assets/image_certifications/Frame 1261153061.png',
                  width: 170,
                ), // 2
                Image.asset(
                  'assets/image_certifications/Frame 1261153062.png',
                  width: 170,
                ), // 3
                Image.asset(
                  'assets/image_certifications/Group 1000211838.png',
                  width: 170,
                ),
                Image.asset(
                  'assets/image_certifications/Frame 1261153063.png',
                  width: 170,
                ), // 4
                Image.asset(
                  'assets/image_certifications/Frame 1261153064.png',
                  width: 170,
                ), // 5
                Image.asset(
                  'assets/image_certifications/Frame 1261153065.png',
                  width: 170,
                ), // 6
                Image.asset(
                  'assets/image_certifications/Frame 1261153066.png',
                  width: 170,
                ), // 7
                Image.asset(
                  'assets/image_certifications/Frame 1261153067.png',
                  width: 170,
                ), // 8
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Visibility(
            visible: MediaQuery.of(context).size.width > 950,
            child: Container(
              color: const Color.fromRGBO(245, 247, 250, 1),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 44.55,
                  bottom: 44.55,
                  left: MediaQuery.of(context).size.width <= 1100
                              ? 60
                              :MediaQuery.of(context).size.width <= 1300
                              ? 120
                              :250,
                ),
                child: Row(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: MediaQuery.of(context).size.width <= 1400
                              ? 50
                              : MediaQuery.of(context).size.width <= 1500
                              ? 100
                              :200, //นอน
                      runSpacing: 50, //ตั้ง
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width <= 1100
                              ? 400
                              :MediaQuery.of(context).size.width <= 1400
                              ? 500
                              :600,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LocaleKeys.home_compliance.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      color: Theme.of(context).colorScheme.outline,
                                    ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                LocaleKeys.home_heights.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                        color: Theme.of(context).colorScheme.onError),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                LocaleKeys.home_auditing_services.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color:
                                            Theme.of(context).colorScheme.onPrimary),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/image_icon/Vector.png'),
                                const SizedBox(width: 20),
                                Container(
                                  width: 350,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Expert Consultation',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                                  fontSize: MediaQuery.of(context).size.width < 450 ? 14 : 16,
                                            ),
                                      ),
                                      Text(
                                        LocaleKeys.home_expert_guidance.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary,
                                                  fontSize: MediaQuery.of(context).size.width < 450 ? 12 : 14,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Image.asset('assets/image_icon/fi_14265.png'),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 350,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mastering Project Timelines',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                                  fontSize: MediaQuery.of(context).size.width < 450 ? 14 : 16,
                                            ),
                                      ),
                                      Text(
                                        LocaleKeys.home_navigate_timelines.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary,
                                                  fontSize: MediaQuery.of(context).size.width < 450 ? 12 : 14,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [

                                Image.asset('assets/image_icon/fi_2554675.png',),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 350,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'All-in-One Solution',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                                  fontSize: MediaQuery.of(context).size.width < 450 ? 14 : 16,
                                            ),
                                      ),
                                      Text(
                                        LocaleKeys.home_complete_solution.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary,
                                                  fontSize: MediaQuery.of(context).size.width < 450 ? 12 : 14,
                                            ),
                                            softWrap: true,
                                            overflow: TextOverflow.visible,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).size.width <= 950,
            child: Container(
              
              color: const Color.fromRGBO(245, 247, 250, 1),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 44.55,
                  bottom: 44.55,
                  right: 15,
                  left: MediaQuery.of(context).size.width < 700
                      ? 30
                      : MediaQuery.of(context).size.width < 1000
                          ? 100
                          : MediaQuery.of(context).size.width < 14
                              ? 150
                              : 250,
                ),
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 50, //นอน
                  runSpacing: 50, //ตั้ง
                  children: [
                    Container(
                      width: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys.home_compliance.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.outline,
                                ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            LocaleKeys.home_heights.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: Theme.of(context).colorScheme.onError),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            LocaleKeys.home_auditing_services.tr(),

                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/image_icon/Vector.png'),
                            const SizedBox(width: 20),
                            Container(
                              width: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Expert Consultation',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                  ),
                                  Text(
                                    LocaleKeys.home_expert_guidance.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Image.asset('assets/image_icon/fi_14265.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mastering Project Timelines',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                  ),
                                  Text(
                                    LocaleKeys.home_navigate_timelines.tr(),

                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Image.asset('assets/image_icon/fi_2554675.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'All-in-One Solution',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                  ),
                                  Text(
                                    LocaleKeys.home_complete_solution.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

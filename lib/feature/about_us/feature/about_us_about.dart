import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';
class AboutUSAbout extends StatelessWidget implements PreferredSizeWidget {
  const AboutUSAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBgAbout(context),
        _buildBoxAbout(context),
      ],
    );
  }

  Column _buildBoxAbout(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width < 1200 ? 0 :MediaQuery.of(context).size.width < 1300 ? 60 :250,
        left: MediaQuery.of(context).size.width < 700 ? 60 :250,
        top: 150,
        bottom: 0,
      ),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width < 700 ? 50 :50,
        left: MediaQuery.of(context).size.width < 700 ? 50 :50,
        top: 50,
        bottom: 50,
      ),
                width: MediaQuery.of(context).size.width < 700 ? 350:650,
                color: const Color.fromRGBO(66, 133,244, 1),
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 35.0, //นอน
                  runSpacing: 20.0, //ตั้ง
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.aboutUs_digital_sustainabilityA.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                      fontSize: MediaQuery.of(context).size.width < 700 ? 18 : MediaQuery.of(context).size.width < 800 ? 28 : 36,
                                      ),
                        ),
                        Text(
                          LocaleKeys.aboutUs_digital_sustainabilityB.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                      fontSize: MediaQuery.of(context).size.width < 700 ? 18 : MediaQuery.of(context).size.width < 800 ? 28 : 36,
                                      ),
                        ),
                      ],
                    ),
                    Text(
                      LocaleKeys.aboutUs_highest_level_service.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                              color:
                                  Theme.of(context).colorScheme.secondary,
                                  fontSize: MediaQuery.of(context).size.width < 700 ? 14 : MediaQuery.of(context).size.width < 800 ? 16 : 20,
                                  ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      LocaleKeys.aboutUs_personalized_approach.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                              color:
                                  Theme.of(context).colorScheme.secondary,
                                  fontSize: MediaQuery.of(context).size.width < 700 ? 14 : MediaQuery.of(context).size.width < 800 ? 16 : 20,
                                  ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      LocaleKeys.aboutUs_certified_experts.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                              color:
                                  Theme.of(context).colorScheme.secondary,
                                  fontSize: MediaQuery.of(context).size.width < 700 ? 14 : MediaQuery.of(context).size.width < 800 ? 16 : 20,
                                  ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      LocaleKeys.aboutUs_dedicated_team.tr(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                              color:
                                  Theme.of(context).colorScheme.secondary,
                                  fontSize: MediaQuery.of(context).size.width < 700 ? 14 : MediaQuery.of(context).size.width < 800 ? 16 : 20,
                                  
                                  ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
        
      ],
    );
  }

  Container _buildBgAbout(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width < 700 ? 30 : MediaQuery.of(context).size.width < 800 ? 30 :MediaQuery.of(context).size.width < 1300 ? 60 :250,
          right: MediaQuery.of(context).size.width < 1300 ? 60 :250,
          top: 120,
          bottom: 120,
        ),
      child: Image.asset(
        'assets/images/bg about home.png',
        height: 900,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

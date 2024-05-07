import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class CreatingSuccess extends StatelessWidget implements PreferredSizeWidget {
  const CreatingSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 100, bottom: 20),
      child: Column(
        children: [
          Text(
            LocaleKeys.home_creating_success.tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const SizedBox(height: 20),
          Text(
            LocaleKeys.home_our_reputation.tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 50.0, //นอน
              runSpacing: 20.0, //ตั้ง
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 234, 234, 234), // สีของเงา
                        offset: Offset(0, 1.5), // ตำแหน่งของเงา (x, y)
                        blurRadius: 2.0, // รัศมีของเงา
                        spreadRadius: 0.5, //เงาฟุ้ง
                      ),
                    ],
                  ),

                  width: 360,
                  height: 300,
                  //color: Color.fromARGB(255, 166, 245, 150),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image_icon/Icon_Consultation.png',
                          fit: BoxFit.cover,
                          height: 38.98,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Consultation',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          LocaleKeys.home_consultation.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 234, 234, 234), // สีของเงา
                        offset: Offset(0, 1.5), // ตำแหน่งของเงา (x, y)
                        blurRadius: 2.0, // รัศมีของเงา
                        spreadRadius: 0.5, //เงาฟุ้ง
                      ),
                    ],
                  ),
                  width: 360,
                  height: 300,
                  //color: Color.fromARGB(255, 166, 245, 150),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image_icon/Icon_Implementation.png',
                          fit: BoxFit.cover,
                          height: 38.98,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Implementation',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          LocaleKeys.home_implementation.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 234, 234, 234), // สีของเงา
                        offset: Offset(0, 1.5), // ตำแหน่งของเงา (x, y)
                        blurRadius: 2.0, // รัศมีของเงา
                        spreadRadius: 0.5, //เงาฟุ้ง
                      ),
                    ],
                  ),
                  width: 360,
                  height: 300,
                  //color: Color.fromARGB(255, 166, 245, 150),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image_icon/Icon_Auditing.png',
                          fit: BoxFit.cover,
                          height: 38.98,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Auditing',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          LocaleKeys.home_auditing.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';
class AboutUSHome extends StatelessWidget implements PreferredSizeWidget {
  const AboutUSHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBgAbout(context),
        _buildBoxAbout(context),
      ],
    );
  }

  Container _buildBoxAbout(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width < 1200
                  ? 0
                  : MediaQuery.of(context).size.width < 1300
                      ? 60
                      : 250,
              left: MediaQuery.of(context).size.width < 700 ? 60 : 250,
              top: 200,
              bottom: 0,
            ),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width < 700 ? 50 : 50,
                    left: MediaQuery.of(context).size.width < 700 ? 50 : 50,
                    top: 50,
                    bottom: 50,
                  ),
                  width: MediaQuery.of(context).size.width < 700 ? 350 : 520,
                  color: const Color.fromRGBO(66, 133, 244, 1),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    runSpacing: 20.0, //ตั้ง
                    children: [
                      Text(
                        'Discovering \nDigital Sustainability',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: MediaQuery.of(context).size.width < 700
                                  ? 18
                                  : MediaQuery.of(context).size.width < 800
                                      ? 28
                                      : 36,
                            ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        LocaleKeys.home_aboutusA.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: MediaQuery.of(context).size.width < 700
                                  ? 14
                                  : MediaQuery.of(context).size.width < 800
                                      ? 16
                                      : 20,
                            ),
                      ),
                      Text(
                        LocaleKeys.home_aboutusB.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: MediaQuery.of(context).size.width < 700
                                  ? 14
                                  : MediaQuery.of(context).size.width < 800
                                      ? 16
                                      : 20,
                            ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          GoRouter.of(context).go('/rise-aboutus');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0), // โค้งๆ
                            side:
                                const BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 1.0, vertical: 16.0),
                          child: Text(
                            LocaleKeys.botton_history.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildBgAbout(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width < 700
            ? 30
            : MediaQuery.of(context).size.width < 800
                ? 30
                : MediaQuery.of(context).size.width < 1300
                    ? 60
                    : 250,
        right: MediaQuery.of(context).size.width < 1300 ? 60 : 250,
        top: 120,
        bottom: 120,
      ),
      child: Image.asset(
        'assets/images/bg about home.png',
        //width: 1133,
        height: MediaQuery.of(context).size.width < 700 ? 600 : 800,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';


class FooterHome extends StatefulWidget implements PreferredSizeWidget {
  const FooterHome({
    Key? key,
    this.footer = kToolbarHeight,
  }) : super(key: key);
  final double footer;

  @override
  _FooterHomeState createState() => _FooterHomeState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _FooterHomeState extends State<FooterHome> {
  String _isHovered = '';
  bool _hoveredTextTH = false;
  bool _hoveredTel01 = false;
  bool _hoveredTel02 = false;
  bool _hoveredTel03 = false;
  bool _hoveredmail01 = false;
  bool _hoveredmail02 = false;
  bool _hoveredFB = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: const Color.fromRGBO(41, 47, 54, 1),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width <= 800
                              ? 15
                              :MediaQuery.of(context).size.width <= 1050
                              ? 15
                              :40,
                              
                              top: 50,
                              bottom: 40
                              ),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: MediaQuery.of(context).size.width <= 800
                              ? 30
                              :MediaQuery.of(context).size.width <= 1699
                              ? 50
                              : 150, //นอน
                    runSpacing: 50, //ตั้ง
                    children: [
                      Container(
                        width: 370,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/images/rise-logo-based white.svg',
                              height: MediaQuery.of(context).size.width <= 1000
                                  ? 40
                                  : 55,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              LocaleKeys.footer_company.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              LocaleKeys.footer_address.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width <= 800
                              ? 400
                              
                              :490,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.footer_home.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                  ),
                                  const SizedBox(height: 20),
                                  buildGestureDetector(
                                    LocaleKeys.footer_about_us.tr(),
                                    '/rise-aboutus',
                                  ),
                                  const SizedBox(height: 15),
                                  buildGestureDetector(
                                    LocaleKeys.footer_services.tr(),
                                    '/rise-services/iso-consulting',
                                  ),
                                  const SizedBox(height: 15),
                                  buildGestureDetector(
                                    LocaleKeys.footer_our_expertise.tr(),
                                    '/rise-expertise/true',
                                  ),
                                  const SizedBox(height: 15),
                                  buildGestureDetector(
                                    LocaleKeys.footer_contact_us.tr(),
                                    '/rise-contact',
                                  ),
                                  const SizedBox(height: 15),
                                  buildGestureDetector(
                                    LocaleKeys.footer_sustainability.tr(),
                                    '/rise-sustainpage',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width:MediaQuery.of(context).size.width <= 800
                              ? 20
                              :MediaQuery.of(context).size.width < 900
                                  ? 40
                                  : MediaQuery.of(context).size.width < 400
                                      ? 0
                                      : 120,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width <= 450
                              ? 200
                              :250,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    LocaleKeys.footer_support.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                  ),
                                  const SizedBox(height: 20),
                                  buildGestureDetector(
                                    LocaleKeys.footer_privacy.tr(),
                                    '/rise-privacy',
                                  ),
                                  const SizedBox(height: 15),
                                  buildGestureDetector(
                                    LocaleKeys.footer_term.tr(),
                                    '/rise-termsandconditions',
                                  ),
                                  const SizedBox(height: 15),
                                  buildGestureDetector(
                                    LocaleKeys.footer_cookies.tr(),
                                    '/rise-cookie',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.footer_get_in_touch.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        launch('tel:+66020000323');
                                      },
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onEnter: (_) {
                                          setState(() {
                                            _hoveredTel01 = true;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            _hoveredTel01 = false;
                                          });
                                        },
                                        child: Text(
                                          '+66 (0) 2000-0323',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: _hoveredTel01
                                                    ? Colors.blue
                                                    : Colors.white,
                                              ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    GestureDetector(
                                      onTap: () {
                                        launch('tel:+660884969200');
                                      },
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onEnter: (_) {
                                          setState(() {
                                            _hoveredTel02 = true;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            _hoveredTel02 = false;
                                          });
                                        },
                                        child: Text(
                                          '+66 (0) 8849-69200',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: _hoveredTel02
                                                    ? Colors.blue
                                                    : Colors.white,
                                              ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    GestureDetector(
                                      onTap: () {
                                        launch('tel:+660815199562');
                                      },
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onEnter: (_) {
                                          setState(() {
                                            _hoveredTel03 = true;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            _hoveredTel03 = false;
                                          });
                                        },
                                        child: Text(
                                          '+66 (0) 8151-99562',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: _hoveredTel03
                                                    ? Colors.blue
                                                    : Colors.white,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          _hoveredmail01 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _hoveredmail01 = false;
                                        });
                                      },
                                      child: buildCopyTextWidget01(
                                        'thititha@risegroups.net',
                                        context,
                                        color: _hoveredmail01
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          _hoveredmail02 = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          _hoveredmail02 = false;
                                        });
                                      },
                                      child: buildCopyTextWidget02(
                                        'urairat.in@risegroups.net',
                                        context,
                                        color: _hoveredmail02
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width <= 70
                              ? 600
                              :MediaQuery.of(context).size.width <= 900
                              ? 700
                              :MediaQuery.of(context).size.width <= 1050
                              ? 900
                              :MediaQuery.of(context).size.width <= 1250
                              ? 800
                              :MediaQuery.of(context).size.width <= 1699
                              ? 1220
                              :1420,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        spacing: 10, //นอน
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.setLocale(const Locale('th'));

                              print(context.locale.toString());
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              onEnter: (_) {
                                setState(() {
                                  _hoveredTextTH = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  _hoveredTextTH = false;
                                });
                              },
                              child: Text(
                                LocaleKeys.appbar_th.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: _hoveredTextTH ||
                                              context.locale.languageCode ==
                                                  'th'
                                          ? Colors.blue
                                          : const Color.fromARGB(255, 255, 255, 255),
                                      decoration:
                                          context.locale.languageCode == 'th'
                                              ? TextDecoration.underline
                                              : TextDecoration.none,
                                    ),
                              ),
                            ),
                          ),
                          const Text(
                            '|',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.setLocale(const Locale('en'));

                              print(context.locale.toString());
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              onEnter: (_) {
                                setState(() {
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                });
                              },
                              child: Text(
                                LocaleKeys.appbar_en.tr(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: _hoveredTextTH ||
                                              context.locale.languageCode ==
                                                  'en'
                                          ? Colors.blue
                                          : const Color.fromARGB(255, 255, 255, 255),
                                      decoration:
                                          context.locale.languageCode == 'en'
                                              ? TextDecoration.underline
                                              : TextDecoration.none,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: const Color.fromRGBO(66, 133, 244, 1),
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                //color: Colors.amber,
                width: MediaQuery.of(context).size.width < 450 ? 1300 : 1150,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width <= 800
                              ? 30
                              :MediaQuery.of(context).size.width <= 1100
                          ? 50
                          : MediaQuery.of(context).size.width <= 1699
                              ? 240
                              : 240,
                      bottom: 25,
                      top: 25),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Rise Consulting Co.,Ltd. © 2024. ',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      Text(
                        'All Rights Reserved',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, bottom: 20, top: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (_) {
                      setState(() {
                        _hoveredFB = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _hoveredFB = false;
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        // ignore: deprecated_member_use
                        launch('https://www.facebook.com/riseconsultingGroup/');
                      },
                      child: Icon(
                        Icons.facebook,
                        color: _hoveredFB
                            ? const Color.fromARGB(255, 29, 29, 30)
                            : Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  GestureDetector buildGestureDetector(String text, String route) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).go(route);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            _isHovered = text;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovered = '';
          });
        },
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: _isHovered == text
                    ? const Color.fromRGBO(66, 133, 244, 1)
                    : Theme.of(context).colorScheme.surfaceTint,
              ),
        ),
      ),
    );
  }

  Widget buildCopyTextWidget02(
    String text,
    BuildContext context, {
    Color? color,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: _hoveredmail02 ? Colors.blue : Colors.white,
          ),
    );
  }

  Widget buildCopyTextWidget01(
    String text,
    BuildContext context, {
    Color? color,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: _hoveredmail01 ? Colors.blue : Colors.white,
          ),
    );
  }
}

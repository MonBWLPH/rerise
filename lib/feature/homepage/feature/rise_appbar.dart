import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class RiseAppbar extends StatefulWidget implements PreferredSizeWidget {
  const RiseAppbar({
    Key? key,
    this.appBarHeight = kToolbarHeight,
  }) : super(key: key);

  final double appBarHeight;

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  _RiseAppbarState createState() => _RiseAppbarState();
}

class _RiseAppbarState extends State<RiseAppbar> {
  String _hoveredText = '';
  bool _hoveredTextTH = false;
  bool _hoveredTextEN = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      flexibleSpace: Container(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width < 700
              ? 30
              : MediaQuery.of(context).size.width < 800
                  ? 30
                  : MediaQuery.of(context).size.width < 1300
                      ? 60
                      : 250,
          right: MediaQuery.of(context).size.width < 1300 ? 60 : 250,
          top: 20,
          bottom: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/rise-home');
                    },
                    child: SvgPicture.asset(
                      'assets/images/rise-logo.svg',
                      width:
                          MediaQuery.of(context).size.width <= 1000 ? 50 : 90,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Visibility(
              visible: MediaQuery.of(context).size.width > 1000,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildNavItem(
                    context,
                    LocaleKeys.appbar_home.tr(),
                    '/rise-home',
                  ),
                  const SizedBox(width: 30),
                  _buildNavItem(context, LocaleKeys.appbar_about_us.tr(),
                      '/rise-aboutus'),
                  const SizedBox(width: 30),
                  _buildNavItem(context, LocaleKeys.appbar_services.tr(),
                      '/rise-services/iso-consulting'),
                  const SizedBox(width: 30),
                  _buildNavItem(context, LocaleKeys.appbar_our_expertise.tr(),
                      '/rise-expertise/true'),
                  const SizedBox(width: 30),
                  _buildNavItem(context, LocaleKeys.appbar_contact_us.tr(),
                      '/rise-contact'),
                  const SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      context.setLocale(Locale('th'));

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
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: _hoveredTextTH ||
                                      context.locale.languageCode == 'th'
                                  ? Colors.blue
                                  : const Color.fromRGBO(20, 23, 31, 1),
                              decoration: context.locale.languageCode == 'th'
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                      ),
                    ),
                  ),
                  const Text(
                    ' | ',
                    style: TextStyle(
                      color: Color.fromRGBO(20, 23, 31, 1),
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.setLocale(Locale('en'));

                      print(context.locale.toString());
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          _hoveredTextEN = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _hoveredTextEN = false;
                        });
                      },
                      child: Text(
                        LocaleKeys.appbar_en.tr(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: _hoveredTextEN ||
                                      context.locale.languageCode == 'en'
                                  ? Colors.blue
                                  : const Color.fromRGBO(20, 23, 31, 1),
                              decoration: context.locale.languageCode == 'en'
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String text, String path) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _hoveredText = text;
        });
      },
      onExit: (_) {
        setState(() {
          _hoveredText = '';
        });
      },
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).go(path);
        },
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: _hoveredText == text
                    ? Color.fromRGBO(66, 133, 244, 1)
                    : Theme.of(context).colorScheme.primary,
              ),
        ),
      ),
    );
  }
}

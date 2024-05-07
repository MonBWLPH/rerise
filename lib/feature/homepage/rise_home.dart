// ในไฟล์ RiseHomeScreen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_rise_consulting/feature/homepage/feature/about_us_home.dart';
import 'package:web_rise_consulting/feature/homepage/feature/contact_home.dart';
import 'package:web_rise_consulting/feature/homepage/feature/experience_home.dart';
import 'package:web_rise_consulting/feature/homepage/feature/footer.dart';
import 'package:web_rise_consulting/feature/homepage/feature/header_home.dart';
import 'package:web_rise_consulting/feature/homepage/feature/our_certifications.dart';
import 'package:web_rise_consulting/feature/homepage/feature/our_clients_home.dart';
import 'package:web_rise_consulting/feature/homepage/feature/rise_appbar.dart';
import 'package:web_rise_consulting/feature/homepage/feature/services_home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class RiseHomeScreen extends StatefulWidget {
  const RiseHomeScreen({super.key, required this.isAutoscoll});
  final bool isAutoscoll;
  @override
  State<RiseHomeScreen> createState() => _RiseHomeScreenState();
}

class _RiseHomeScreenState extends State<RiseHomeScreen> {
  final GlobalKey _ourCertificationsKey = GlobalKey();

  @override
  void initState() {
    if (widget.isAutoscoll) {
      autoscroll();
    }
    super.initState();
  }

  void autoscroll() async {
    await Future.delayed(const Duration(milliseconds: 800));
    Scrollable.ensureVisible(
      _ourCertificationsKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RiseAppbar(
          appBarHeight: MediaQuery.of(context).size.width <= 1000 ? 60 : 90),
      endDrawer: MediaQuery.of(context).size.width <= 1000
          ? Drawer(
              child: ListView(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                children: [
                  Container(
                    height: 80,
                    child: DrawerHeader(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.scale(
                            scale: 1.6,
                            child: const Icon(
                              Icons.menu,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.setLocale(const Locale('th'));

                                  print(context.locale.toString());
                                },
                                child: Text(
                                  LocaleKeys.appbar_th.tr(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        decoration:
                                            context.locale.languageCode == 'th'
                                                ? TextDecoration.underline
                                                : TextDecoration.none,
                                      ),
                                ),
                              ),
                              const Text(
                                ' | ',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.setLocale(const Locale('en'));

                                  print(context.locale.toString());
                                },
                                child: Text(
                                  LocaleKeys.appbar_en.tr(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        decoration:
                                            context.locale.languageCode == 'en'
                                                ? TextDecoration.underline
                                                : TextDecoration.none,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      LocaleKeys.appbar_home.tr(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background),
                    ),
                    onTap: () {
                      GoRouter.of(context).go('/rise-home');
                    },
                    tileColor: const Color.fromARGB(255, 129, 127, 129), // สีพื้นหลัง
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // ความโค้งของขอบ
                    ),
                  ),
                  ListTile(
                    title: Text(LocaleKeys.appbar_about_us.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background)),
                    onTap: () {
                      GoRouter.of(context).go('/rise-aboutus');
                    },
                  ),
                  ListTile(
                    title: Text(LocaleKeys.appbar_services.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background)),
                    onTap: () {
                      GoRouter.of(context).go('/rise-services/iso-consulting');
                    },
                  ),
                  ListTile(
                    title: Text(LocaleKeys.appbar_our_expertise.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background)),
                    onTap: () {
                      Scrollable.ensureVisible(
                        _ourCertificationsKey.currentContext!,
                        duration: const Duration(seconds: 1),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(LocaleKeys.appbar_contact_us.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background)),
                    onTap: () {
                      GoRouter.of(context).go('/rise-contact');
                    },
                  ),
                ],
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderHome(),
            //CreatingSuccess(),
            const AboutUSHome(),
            const ServicesHome(),
            const ContactHome(),
            OurCertificationsHome(key: _ourCertificationsKey),
            const OurClientsHome(),
            const ExperienceHome(),
            const FooterHome(),
          ],
        ),
      ),
    );
  }
}

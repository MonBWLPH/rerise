import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_rise_consulting/config/themes/rise_theme_fonts.dart';
import 'package:web_rise_consulting/feature/Services/feature/details_services.dart';
import 'package:web_rise_consulting/feature/homepage/feature/footer.dart';
import 'package:web_rise_consulting/feature/homepage/feature/rise_appbar.dart';
import 'package:web_rise_consulting/feature/homepage/feature/services_home.dart';
import 'package:web_rise_consulting/feature/services/feature/header_services.dart';
import 'package:web_rise_consulting/main.dart';
import 'package:go_router/go_router.dart';
import 'package:web_rise_consulting/utils/json_helper.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class RiseServicesScreen extends StatefulWidget {
  const RiseServicesScreen({super.key, required this.serviceKey});

  final String serviceKey;

  @override
  State<RiseServicesScreen> createState() => _RiseServicesScreenState();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: RiseTheme.themeData,
      home: const AboutPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _RiseServicesScreenState extends State<RiseServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RiseAppbar(
        appBarHeight: MediaQuery.of(context).size.width <= 1000 ? 60 : 90,
      ),
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
                    )),
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
                    tileColor: const Color.fromARGB(255, 129, 127, 129), // สีพื้นหลัง
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // ความโค้งของขอบ
                    ),
                  ),
                  ListTile(
                    title: Text(LocaleKeys.appbar_our_expertise.tr(),
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background)),
                    onTap: () {
                      GoRouter.of(context).go('/rise-expertise/true');
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
      body: FutureBuilder(
          future: JsonHelper.loadServices(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const HeaderServices(),
                    DetailsServices(
                      service: context.locale.languageCode == "th" ? snapshot.data!.th
                          .where((service) => service.key == widget.serviceKey)
                          .first
                           : snapshot.data!.en
                          .where((service) => service.key == widget.serviceKey)
                          .first,
                    ),
                    const ServicesHome(),
                    const FooterHome(),
                  ],
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class ContactHome extends StatefulWidget {
  const ContactHome({Key? key}) : super(key: key);

  @override
  _ContactHomeState createState() => _ContactHomeState();
}

class _ContactHomeState extends State<ContactHome> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg contact home.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 300,
            ),
            Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width <= 1300 ? 60 : 240,
                right: MediaQuery.of(context).size.width <= 1300 ? 60 : 240,
              ),
              height: 300,
              alignment: Alignment.centerLeft,
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: MediaQuery.of(context).size.width <= 1100
                    ? 100
                    : MediaQuery.of(context).size.width <= 1200
                        ? 200
                        : MediaQuery.of(context).size.width <= 1300
                            ? 300
                            : MediaQuery.of(context).size.width <= 1350
                                ? 50
                                : MediaQuery.of(context).size.width <= 1450
                                    ? 100
                                    : MediaQuery.of(context).size.width <= 1550
                                        ? 200
                                        : MediaQuery.of(context).size.width <= 1650
                                            ? 300
                                            : MediaQuery.of(context).size.width <= 1669
                                                ? 400
                                                : 650,
                //นอน
                runSpacing: 20, //ตั้ง
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sustainable Digital Excellence ',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: MediaQuery.of(context).size.width < 516
                                    ? 18
                                    : MediaQuery.of(context).size.width < 800
                                        ? 26
                                        : 36,
                              ),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          children: [
                            Text(
                              LocaleKeys.home_contact.tr(),
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: MediaQuery.of(context).size.width < 516
                                        ? 16
                                        : MediaQuery.of(context).size.width < 800
                                            ? 20
                                            : 24,
                                  ),
                            ),
                            const SizedBox(width: 15),
                            Text(
                              '+66 (0)2 019 3541',
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: MediaQuery.of(context).size.width < 516
                                        ? 16
                                        : MediaQuery.of(context).size.width < 800
                                            ? 20
                                            : 24,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MouseRegion(
                        onEnter: (_) => setState(() => _isHovered = true),
                        onExit: (_) => setState(() => _isHovered = false),
                        child: ElevatedButton(
                          onPressed: () {
                            GoRouter.of(context).go('/rise-contact');
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _isHovered ? const Color.fromRGBO(33, 150, 243, 0.1) : Colors.transparent,
                            onPrimary: Theme.of(context).colorScheme.secondary,
                            side: BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.0), // โค้งๆ
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 16.0),
                            child: Text(
                              LocaleKeys.botton_get_your_consultation.tr(),
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

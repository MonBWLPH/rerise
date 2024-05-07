import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class ExperienceHome extends StatefulWidget {
  const ExperienceHome({Key? key}) : super(key: key);

  @override
  _ExperienceHomeState createState() => _ExperienceHomeState();
}

class _ExperienceHomeState extends State<ExperienceHome> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/sunset-shines-through-tall-buildings.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: 600,
          ),
          Container(
            alignment: Alignment.center,
            width: 1100,
            height: 600,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 50, bottom: 50),
                    width: 510,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          child: Text(
                            LocaleKeys.home_experience.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          LocaleKeys.home_propel_business.tr(),
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary),
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: MouseRegion(
                            onEnter: (_) => setState(() => _isHovered = true),
                            onExit: (_) => setState(() => _isHovered = false),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _isHovered
                                    ? const Color.fromRGBO(41, 47, 54, 0.9)
                                    : const Color.fromRGBO(41, 47, 54, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                  side: BorderSide(
                                      color:
                                          _isHovered ? const Color.fromARGB(255, 0, 0, 0) : const Color.fromRGBO(41, 47, 54, 1),
                                      width: 2),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  GoRouter.of(context).go('/rise-contact');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1.0, vertical: 16.0),
                                  child: Text(
                                    LocaleKeys.botton_contact_us.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                  ),
                                ),
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
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class BusinessStandardsAbout extends StatefulWidget {
  const BusinessStandardsAbout({Key? key}) : super(key: key);

  @override
  _BusinessStandardsAboutState createState() => _BusinessStandardsAboutState();
}

class _BusinessStandardsAboutState extends State<BusinessStandardsAbout> {
  bool _hoveredTel03 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(41, 47, 54, 1),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 35.0, //นอน
          runSpacing: 20.0, //ตั้ง
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0), // ปรับความโค้ง
                child: Image.asset(
                  'assets/images/business-team-manager-meeting 1.png',
                  width: 555,
                ),
              ),
            ),
            Container(
              //color: Colors.blue,
              width: 555,
              child: Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.aboutUs_business_standardsA.tr(),
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    Text(
                      LocaleKeys.aboutUs_business_standardsB.tr(),
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      LocaleKeys.aboutUs_compliance_audit_services.tr(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // พื้นหลังขาว
                        borderRadius: BorderRadius.circular(10.0), // ปรับความโค้ง=
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width < 450 ? 50 : 70,
                            height: MediaQuery.of(context).size.width < 450 ? 50 : 70,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(246, 246, 246, 1), // พื้นหลังขาว
                              borderRadius: BorderRadius.circular(10.0), // ปรับความโค้ง
                            ),
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/image_icon/Black.png'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LocaleKeys.aboutUs_get_consultation.tr(),
                                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                      color: Theme.of(context).colorScheme.onPrimary,
                                      fontSize: MediaQuery.of(context).size.width < 450 ? 16 : 20,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    LocaleKeys.aboutUs_call_for_more.tr(),
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                          color: Theme.of(context).colorScheme.onPrimary,
                                          fontSize: MediaQuery.of(context).size.width < 450 ? 14 : 18,
                                        ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launch('tel:+66020000323');
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
                                        ' +66 (0) 2000-0323',
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                              color: _hoveredTel03 ? Colors.blue : const Color.fromRGBO(41, 47, 54, 1),
                                              fontSize: MediaQuery.of(context).size.width < 450 ? 14 : 16,
                                            ),
                                      ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

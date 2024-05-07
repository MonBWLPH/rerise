import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';
class EmbarkExcellenceAbout extends StatelessWidget
    implements PreferredSizeWidget {
  const EmbarkExcellenceAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(245, 247, 250, 1),
      child: Padding(
        padding: const EdgeInsets.only( top: 70, bottom: 20),
        child: Column(
          children: [
            
            Text(
              LocaleKeys.aboutUs_embark_excellence.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
              child: Container(
                
                width: 750,
                child: Text(
                  LocaleKeys.aboutUs_unique_appeal.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only( top: 50, bottom: 50),
              child: Container(
                width: 2000,
                child: Wrap(
                  direction: Axis.horizontal,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            spacing: 35.0, //นอน
                            runSpacing: 20.0, //ตั้ง
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              BorderRadius.circular(10.0), // ปรับความโค้ง
                        ),
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.aboutUs_inspection_certification.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                        
                            const SizedBox(height: 20,),
                            Text(
                              LocaleKeys.aboutUs_regulatory_guidelines.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                          ],
                        ),
                      ),
                    ),
                        
                        
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              BorderRadius.circular(10.0), // ปรับความโค้ง
                        ),
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.aboutUs_system_development.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                            const SizedBox(height: 20,),
                            Text(
                              LocaleKeys.aboutUs_certifying_companies.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                          ],
                        ),
                      ),
                    ),
                        
                        
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              BorderRadius.circular(10.0), // ปรับความโค้ง
                        ),
                    
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.aboutUs_it_assessment.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                            const SizedBox(height: 20,),
                            Text(
                              LocaleKeys.aboutUs_proficient_experts.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                          ],
                        ),
                      ),
                    ),
                        
                        
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              BorderRadius.circular(10.0), // ปรับความโค้ง
                        ),
                      width: 300,
                      height: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.aboutUs_compliance_value_creation.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                            const SizedBox(height: 20,),
                            Text(
                              LocaleKeys.aboutUs_organizational_value.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                            ),
                          ],
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

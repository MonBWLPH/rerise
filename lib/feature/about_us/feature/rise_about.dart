import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';
class RiseAbout extends StatelessWidget implements PreferredSizeWidget {
  const RiseAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width < 800
                  ? 5
                  :MediaQuery.of(context).size.width < 1100
                  ? 80
                  :MediaQuery.of(context).size.width < 1150
                  ? 100
                  :MediaQuery.of(context).size.width < 1200
                  ? 150
                  :MediaQuery.of(context).size.width < 1300 
                  ? 180
                  : 200,
            top: 80,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width < 500 ? 100 : 200,
            height: MediaQuery.of(context).size.width < 450
                  ? 750
                  :MediaQuery.of(context).size.width < 500 ? 570 : 450,
            decoration: const BoxDecoration(
              color: Colors.transparent, 
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                bottomLeft: Radius.circular(60.0),
              ),
              border: Border(
                left: BorderSide(
                  color: Color.fromRGBO(244, 240, 236, 1),
                  width: 30,
                ),
                top: BorderSide(
                  color: Color.fromRGBO(244, 240, 236, 1),
                  width: 30,
                ),
                bottom: BorderSide(
                  color: Color.fromRGBO(244, 240, 236, 1),
                  width: 30,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width < 450
                  ? 300
                  :MediaQuery.of(context).size.width < 850
                  ? 550
                  :MediaQuery.of(context).size.width < 900
                  ? 600
                  :MediaQuery.of(context).size.width < 1000
                  ? 700

                  :MediaQuery.of(context).size.width < 1100
                  ? 780
                  :MediaQuery.of(context).size.width < 1150
                  ? 830
                  :MediaQuery.of(context).size.width < 1200
                  ? 850
                  :MediaQuery.of(context).size.width < 1300
                  ? 880
                  : 900,
            top: 80,
            right: 10,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width < 500 ? 100 : 200,
            height: MediaQuery.of(context).size.width < 450
                  ? 750
                  :MediaQuery.of(context).size.width < 500 ? 570 : 450,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
              ),
              border: Border(
                right: BorderSide(
                  color: Color.fromRGBO(244, 240, 236, 1),
                  width: 30,
                ),
                top: BorderSide(
                  color: Color.fromRGBO(244, 240, 236, 1),
                  width: 30,
                ),
                bottom: BorderSide(
                  color: Color.fromRGBO(244, 240, 236, 1),
                  width: 30,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 100, bottom: 100, left: 60, right: 60),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text(
                      '“',
                      style: GoogleFonts.dmSerifDisplay(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(41, 47, 57, 1),
                          fontSize: 85,
                          fontStyle: FontStyle
                              .italic, // ตั้งค่าเป็น italic ตามที่ต้องการ
                        ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 600,
                      child: Text(
                        LocaleKeys.aboutUs_excellence_commitment.tr(),
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(41, 47, 57, 1),
                          fontSize: 28,
                          fontStyle: FontStyle
                              .italic, // ตั้งค่าเป็น italic ตามที่ต้องการ
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 1180,
                  child: Text(
                    LocaleKeys.aboutUs_trusted_partner.tr(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

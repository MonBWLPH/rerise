import 'package:flutter/material.dart';
import 'package:web_rise_consulting/feature/homepage/feature/creatingsuccess_home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';
class HeaderHome extends StatelessWidget implements PreferredSizeWidget {
  HeaderHome({Key? key}) : super(key: key);

  final GlobalKey _creatingSuccessKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _buildBgHeader(context),
              _buildElevatingYourBusinessStandards(context),
              Positioned(
                bottom: 0,
                right: 0,
                child: Column(
                  children: [
                    _buildRiseConsultingBox(context),
                    _buildGetStarted(context),
                    
                  ],
                ),
              ),
            ],
          ),
          CreatingSuccess(key: _creatingSuccessKey),
        ],
      ),
    );
  }

  Container _buildGetStarted(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(41, 47, 54, 1),
      width: MediaQuery.of(context).size.width < 700
          ? 300
          : MediaQuery.of(context).size.width < 800
              ? 350
              : 500,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Scrollable.ensureVisible(
                    _creatingSuccessKey.currentContext!,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: Text(
                  'Get started  ',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: MediaQuery.of(context).size.width > 700
                            ? 16
                            : 14,
                      ),
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildRiseConsultingBox(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 700
          ? 300
          : MediaQuery.of(context).size.width < 800
              ? 350
              : 500,
      alignment: Alignment.center,
      color: Color.fromRGBO(66, 133, 244, 1),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Rise Consulting',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: MediaQuery.of(context).size.width < 700
                        ? 16
                        : MediaQuery.of(context).size.width < 800
                            ? 20
                            : 25,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              LocaleKeys.aboutUs_professional_servicesA.tr(),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: MediaQuery.of(context).size.width < 700
                        ? 14
                        : MediaQuery.of(context).size.width < 800
                            ? 16
                            : 20,
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              LocaleKeys.aboutUs_professional_servicesB.tr(),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: MediaQuery.of(context).size.width < 700
                        ? 14
                        : MediaQuery.of(context).size.width < 800
                            ? 16
                            : 20,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }

  Container _buildElevatingYourBusinessStandards(BuildContext context) {
    return Container(
      width: 1150,
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width < 700
              ? 30
              : MediaQuery.of(context).size.width < 800
                  ? 70
                  : MediaQuery.of(context).size.width <= 1300
                              ? 70
                              :MediaQuery.of(context).size.width < 900
                      ? 60
                      : 250,
          top: MediaQuery.of(context).size.width <= 450
                              ? 60
                              :MediaQuery.of(context).size.width < 700 ? 90 : MediaQuery.of(context).size.width < 800 ? 100 :180,
        ),
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: [
            Text(
              'Elevating your\nbusiness standards.',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: MediaQuery.of(context).size.width <= 1050
                              ? 42
                              :MediaQuery.of(context).size.width <= 1350
                              ? 52
                              :MediaQuery.of(context).size.width <= 1450
                              ? 62
                              :MediaQuery.of(context).size.width < 700
                        ? 34
                        : MediaQuery.of(context).size.width < 800
                            ? 36
                            : 72,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBgHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width < 800 ? 400 : 500,
      child: ShaderMask(
        blendMode: BlendMode.dstIn,
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color.fromARGB(255, 99, 99, 99),
              Colors.transparent
            ],
            stops: [5, 5],
          ).createShader(bounds);
        },
        child: Image.asset(
          'assets/images/HD Home03 02.gif',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

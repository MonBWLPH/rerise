import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';
class HeaderAbout extends StatelessWidget implements PreferredSizeWidget {
  const HeaderAbout({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildBgHeader(),
          Container(
            width:700,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white, // สีขอบ
                width: 4.0, // ขนาดขอบ
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 29, bottom: 29,right: 10,left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.aboutUs_rise_consulting.tr(),
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: MediaQuery.of(context).size.width > 600 ? 36 : 34, 
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    LocaleKeys.aboutUs_professional_servicesA.tr(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: MediaQuery.of(context).size.width > 600 ? 28 : 24, 
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    LocaleKeys.aboutUs_professional_servicesB.tr(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: MediaQuery.of(context).size.width > 600 ? 28 : 24, 
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

ShaderMask _buildBgHeader() {
  return ShaderMask(
    blendMode: BlendMode.srcATop,
    shaderCallback: (Rect bounds) {
      return const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight, 
        colors: [
          Color.fromRGBO(81, 81, 81, 0.3),
          Color.fromRGBO(81, 81, 81, 0.3)
        ],
      ).createShader(bounds);
    },
    child: Image.asset(
        'assets/images/bg headerAbout.png',
        fit: BoxFit.fill,
      //width: double.infinity,
      height: 425,
    ),
  );
}

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

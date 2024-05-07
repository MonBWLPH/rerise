import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_rise_consulting/feature/services/models/service.dart';
import 'package:web_rise_consulting/utils/json_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class ServicesHome extends StatefulWidget implements PreferredSizeWidget {
  const ServicesHome({Key? key}) : super(key: key);

  @override
  _ServicesHomeState createState() => _ServicesHomeState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ServicesHomeState extends State<ServicesHome> {
  String _hoveredService = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(245, 247, 250, 1),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50, top: 50),
        child: Column(
          children: [
            Text(
              LocaleKeys.home_services.tr(),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                width: 1300,
                child: Text(
                  LocaleKeys.home_services_information.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              width: 1000,
              
              child: FutureBuilder(
                future: JsonHelper.loadServices(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if(context.locale.languageCode == "th" ){ 
                      return Wrap(
                        spacing: 80, //นอน
                        runSpacing: 50, //ตั้ง
                        children:  snapshot.data!.th
                            .map(
                              (service) => _buildServicesCard(service, context),
                            )
                            .toList(),
                      );
                    }
                    return Wrap(
                      spacing: 80, //นอน
                      runSpacing: 50, //ตั้ง
                      children:  snapshot.data!.en
                          .map(
                            (service) => _buildServicesCard(service, context),
                          )
                          .toList(),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  MouseRegion _buildServicesCard(OurService service, BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _hoveredService = service.key;
        });
      },
      onExit: (_) {
        setState(() {
          _hoveredService = '';
        });
      },
      child: InkWell(
        onTap: () {
          GoRouter.of(context).go('/rise-services/${service.key}');
        },
        child: Container(
          color: _hoveredService == service.key
              ? const Color.fromRGBO(41, 47, 54, 1).withOpacity(1)
              : const Color.fromRGBO(255, 255, 255, 1),
          width: 250,
          height: 200,
          child: Padding(
            padding:  EdgeInsets.only(top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ColorFiltered(
                 colorFilter: _hoveredService == service.key
    ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
    : ColorFilter.mode(Colors.transparent, BlendMode.srcIn),

                  child: Image.asset(service.img),
                ),
                const SizedBox(height: 20),
                Container(
                  color: const Color.fromRGBO(232, 245, 233, 1),
                  width: 50,
                  height: 2,
                ),
                const SizedBox(height: 20),
                Text(
                  service.title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: _hoveredService == service.key
                            ? Colors.white
                            : Theme.of(context).colorScheme.onPrimary,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

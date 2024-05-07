import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class CookiePolicy extends StatelessWidget implements PreferredSizeWidget {
  const CookiePolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width < 1300 ? 50
                            : MediaQuery.of(context).size.width < 800 ? 10
                            : 240,
            right:  MediaQuery.of(context).size.width < 1300 ? 50
                            : MediaQuery.of(context).size.width < 800 ? 30
                            : 240, 
            top: 50, 
            bottom: 50
            ),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.cookie_cookies_policy.tr(),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.cookie_cookies_definition.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.cookie_company_use_cookies.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.cookie_enhance_website.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              Text(
                LocaleKeys.cookie_understand_usage.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              Text(
                LocaleKeys.cookie_display_advertisements.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.cookie_types_of_cookies.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.cookie_necessary_cookies.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.cookie_preferences_cookies.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.cookie_statistics_cookies.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.cookie_marketing_cookies.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.cookie_manage_cookies_settings.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.cookie_additional_options.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.cookie_disabling_cookies_impact.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.cookie_adjust_browser_preferences.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

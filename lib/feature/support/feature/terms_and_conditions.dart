import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class TermsAndConditions extends StatelessWidget
    implements PreferredSizeWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width < 1300
                ? 50
                : MediaQuery.of(context).size.width < 800
                    ? 10
                    : 240,
            right: MediaQuery.of(context).size.width < 1300
                ? 50
                : MediaQuery.of(context).size.width < 800
                    ? 10
                    : 240,
            top: 50,
            bottom: 50),
        child: Container(
          width: 1650,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.terms_and_conditions_terms_and_conditions.tr(),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_agreement.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_terms_of_service.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_company_description.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_intellectual_property_rights
                    .tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_ownership.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_reservations.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_website_information.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_personal_data_protection_policy
                    .tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_policy_details.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_general_conditions.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_change_amend_cancel.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_website_link.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_linked_websites.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_registration_service.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_registration_details.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_right_of_access.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_update_amend_content.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_limitation_of_liability.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_company_not_responsible.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_applicable_law.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_subject_to_thai_law.tr(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 40),
              Text(
                LocaleKeys.terms_and_conditions_agreement_change.tr(),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const SizedBox(height: 10),
              Text(
                LocaleKeys.terms_and_conditions_change_rights.tr(),
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

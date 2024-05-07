import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:web_rise_consulting/translations/locale_keys.g.dart';

class PrivacyPolicy extends StatelessWidget implements PreferredSizeWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width < 1300 ? 50
                            : MediaQuery.of(context).size.width < 800 ? 10
                            : 240,
        right: MediaQuery.of(context).size.width < 1300 ? 50
                            : MediaQuery.of(context).size.width < 800 ? 10
                            : 240, 
        top: 50,
        bottom: 50),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Text(
                              LocaleKeys.privacy_privacy_policy.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
          
              Text(
                              LocaleKeys.privacy_importance_of_personal_info.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_creation_of_privacy_policy.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 40),
          
              Text(
                              LocaleKeys.privacy_policy_scope.tr(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
          
              Text(
                              LocaleKeys.privacy_policy_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
              Text(
                              LocaleKeys.privacy_non_job_related_personal_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_definition_section.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_personal_info_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_data_subject_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_biological_data_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_personal_data_controller_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_data_processor_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_data_processing_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              
              Text(
                              LocaleKeys.privacy_application_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_cookies_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_office_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_employee_definition_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_personal_info_collected_used_disclosed.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_personal_info_definition.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_info_provided_directly.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_info_received_from_other_sources.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_collected_used_disclosed_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),

                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_personal_details.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_contact_infos.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_employment_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_device_tool_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_third_party_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_other_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),

                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_purpose_of_info_collection.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_purpose_of_info_collectionA.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_contractual_basis.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_legal_obligation.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_legitimate_interest.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),

                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_disclosure_of_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_disclosure_purposes.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),


                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_sending_or_transferring_info_abroad.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_business_operations_abroad.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),

                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_period_of_storing_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_retention_period.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),

                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_info_protection.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_info_protection_measures.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_employee_duty.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),

                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_data_subject_rights.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_rights_definition.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_withdraw_consent.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_request_access_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_request_data_portability.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_right_to_object.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_request_deletion_or_destruction.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_request_suspend_data_use.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_request_correction_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_right_to_complain.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 10),
              Text(
                              LocaleKeys.privacy_exercise_rights.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),


                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_contact_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),

                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_company_info.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_address.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_phone.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 20),
              Text(
                              LocaleKeys.privacy_email.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 40),
              Text(
                              LocaleKeys.privacy_announcement_date.tr(),

                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.onPrimary),
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

import 'package:go_router/go_router.dart';
import 'package:web_rise_consulting/feature/about_us/rise_about_us.dart';
import 'package:web_rise_consulting/feature/contact_us/rise_contact.dart';
import 'package:web_rise_consulting/feature/homepage/rise_home.dart';
import 'package:web_rise_consulting/feature/homepage/rise_home02.dart';
import 'package:web_rise_consulting/feature/services/rise_services.dart';
import 'package:web_rise_consulting/feature/support/rise_cookie.dart';
import 'package:web_rise_consulting/feature/support/rise_privacy.dart';
import 'package:web_rise_consulting/feature/support/terms_and_conditions.dart';
import 'package:web_rise_consulting/feature/sustain/sustainpage.dart';

class RiseHomeRoute {
  static final GoRoute riseExpertise = GoRoute(
    path: '/rise-expertise/:autoscroll',
    builder: (context, state) =>  RiseHomeScreen(isAutoscoll :  state.pathParameters['autoscroll']! == "true",),
  );
  
  static final GoRoute riseHome = GoRoute(
    path: '/rise-home',
    builder: (context, state) =>  const RiseHomeScreenTwo(isAutoscoll: false,),
  );
  static final GoRoute riseContact = GoRoute(
    path: '/rise-contact',
    builder: (context, state) => const RiseContactScreen(),
  );
  static final GoRoute riseAboutUs = GoRoute(
    path: '/rise-aboutus',
    builder: (context, state) => const RiseAboutUsScreen(),
  );
  //Support
  static final GoRoute riseCookie = GoRoute(
    path: '/rise-cookie',
    builder: (context, state) => const RiseCookieScreen(),
  );
  static final GoRoute risePrivacy = GoRoute(
    path: '/rise-privacy',
    builder: (context, state) => const RisePrivacyScreen(),
  );
  static final GoRoute riseTermsAndConditions = GoRoute(
    path: '/rise-termsandconditions',
    builder: (context, state) => const RiseTermsAndConditionsScreen(),
  );
 static final GoRoute riseServices = GoRoute(
    path: '/rise-services/:key',
    builder: (context, state) => RiseServicesScreen(serviceKey: state.pathParameters['key']!,),
  );
  static final GoRoute riseSustainpage = GoRoute(
    path: '/rise-sustainpage',
    builder: (context, state) => const RiseSustainpageScreen(),
  );



//Sustainpage

  static final List<GoRoute> routes = <GoRoute>[
      riseExpertise,
      riseHome,
      riseContact,
      riseAboutUs,
      riseCookie,
      risePrivacy,
      riseTermsAndConditions,
      riseServices,
      riseSustainpage
  
      
  ];
}
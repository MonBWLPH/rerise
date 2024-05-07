import 'package:go_router/go_router.dart';
import 'package:web_rise_consulting/feature/routes/rise_routes.dart';
import 'package:web_rise_consulting/main.dart';


class GlobalRouter {
  static final String initial = RiseHomeRoute.riseHome.path;

  static GoRouter get router {
    return GoRouter(
      initialLocation: initial,
      routes: [
        ...RiseHomeRoute.routes,
      ],
    );
  }

  static delegate({required AboutPage Function(dynamic context, dynamic delegate, dynamic current) builder}) {}
}
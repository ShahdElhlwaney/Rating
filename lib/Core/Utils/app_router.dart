
import 'package:go_router/go_router.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/check_satisfied_view.dart';

import '../../Features/Rating/Presentation/Views/emoji_view.dart';
import '../../Features/Rating/Presentation/Views/start_rating_view.dart';
import '../../Features/Splash/Presentation/Views/Widgets/splash.dart';

abstract class AppRouter
{
  static const kStartRatingView='/startRatingView';
  static const kEmojiView='/sendEmojiView';
  static const kCheckSatisfiedView='/checkSatisfiedView';
// GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splash(),
      ),
      GoRoute(
        path: kStartRatingView,
        builder: (context, state) => const StartRatingView(),
      ),
      GoRoute(
        path: kEmojiView,
        builder: (context, state) => const EmojiView(),
      ),
      GoRoute(
        path: kCheckSatisfiedView,
        builder: (context, state) => const CheckSatisfiedView(),
      ),
    ],
  );



}
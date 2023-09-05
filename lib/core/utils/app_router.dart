
import 'package:go_router/go_router.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/check_satisfied_view.dart';

import 'package:rating_app/Features/Splash/Presentation/Views/Widgets/splash.dart';

import 'package:rating_app/Features/Rating/Presentation/Views/back_to_home_view.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/client_rate_view.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/client_services_view.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/emoji_view.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/feedback_chose_view.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/feedback_client_view.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/start_rating_view.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/thanks_rating_view.dart';

abstract class AppRouter
{
  static const kStartRatingView='/startRatingView';
  static const kEmojiView='/sendEmojiView';
  static const kCheckSatisfiedView='/checkSatisfiedView';
  static const kClientServicesView='/clientServicesView';
  static const kClientRateView='/clientRateView';
  static const kThanksRatingView='/thanksRatingView';
  static const kFeedbackChoseView='/feedbackChoseView';
  static const kFeedbackClientView='/feedbackClientView';
  static const kComeBackToHomeView='/comeBackView';

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
      GoRoute(
        path: kClientServicesView,
        builder: (context, state) => const ClientServicesView(),
      ),
      GoRoute(
        path: kClientRateView,
        builder: (context, state) => const ClientRateView(),
      ),
      GoRoute(
        path: kThanksRatingView,
        builder: (context, state) => const ThanksRatingView(),
      ),
      GoRoute(
        path: kFeedbackChoseView,
        builder: (context, state) => const FeedbackChoseView(),
      ),

      GoRoute(
        path: kFeedbackClientView,
        builder: (context, state) => const FeedbackClientView(),
      ),
      GoRoute(
        path: kComeBackToHomeView,
        builder: (context, state) => const BackToHomeView(),
      ),
    ],
  );



}
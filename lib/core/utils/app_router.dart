import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kHomePath = '/home_view';
  static const kBookDetailsPath = '/book_details_view';
  static const kSearchPath = '/search_view';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomePath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsPath,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchPath,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

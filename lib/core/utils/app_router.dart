import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/item.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentaion/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),

      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),

      GoRoute(
        path: kBookDetailsView,
        builder:
            (context, state) => BlocProvider(
              create: (context) => SimilerBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(book: state.extra! as Item),
            ),
      ),

      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

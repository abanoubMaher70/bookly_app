import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final response = await apiService.get(endPoint: '/volumes?q=comics');

      List<BookModel> featuredBooks = [];
      featuredBooks.add(BookModel.fromJson(response));

      return right(featuredBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final response = await apiService.get(
        endPoint: '/volumes?q=Harry_Potter',
      );

      List<BookModel> featuredBooks = [];
      featuredBooks.add(BookModel.fromJson(response));

      return right(featuredBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
    String category,
  ) async {
    try {
      final response = await apiService.get(
        endPoint: '/volumes?Filtering=free-ebooks&Sorting=relevance&q=comics',
      );

      List<BookModel> similarBooks = [];
      similarBooks.add(BookModel.fromJson(response));

      return right(similarBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}

part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsSuccess extends NewsState {
  final List<NewsModel> newsList;

  NewsSuccess(this.newsList);
}

final class NewsLoading extends NewsState {}

final class NewsFailure extends NewsState {
  final String errorMessage;

  NewsFailure(this.errorMessage);
}

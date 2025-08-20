import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/repositry/news_repo.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.newsRepo) : super(NewsInitial());
  NewsRepo newsRepo;
  Future<void> getNews()async {
    emit(NewsLoading());
    try {
     final articles= await newsRepo.getNews();
        emit(NewsSuccess(articles));
      }
    catch (e) {
      emit(NewsFailure(e.toString()));
    }
  }
}

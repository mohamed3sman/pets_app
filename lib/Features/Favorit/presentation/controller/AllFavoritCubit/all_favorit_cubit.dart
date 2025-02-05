import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pets_app/Core/shared/shared_ids.dart';
part 'all_favorit_state.dart';

class AllFavoritCubit extends Cubit<AllFavoritState> {
  AllFavoritCubit() : super(AllFavoritInitial());

  void checkIfFavoritListEmpty() {
    if (favoritBreedsIds.isEmpty) {
      emit(AllFavoritEmpty());
    }
  }
}

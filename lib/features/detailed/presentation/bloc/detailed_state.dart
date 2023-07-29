part of 'detailed_bloc.dart';

@freezed
class DetailedState with _$DetailedState {
  const factory DetailedState({
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _Initial;

  factory DetailedState.initial() => const DetailedState();
}

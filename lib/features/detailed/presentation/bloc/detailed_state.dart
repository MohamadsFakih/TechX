part of 'detailed_bloc.dart';

@freezed
class DetailedState with _$DetailedState {
  const factory DetailedState({
    /// To check if the page is loading
    @Default(false) bool isLoading,

    /// Used to catch errors
    @Default('') String error,
  }) = _Initial;

  factory DetailedState.initial() => const DetailedState();
}

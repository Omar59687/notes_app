part of 'add_note_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFailure extends AddNotesState {
  final String errMessage;

  AddNoteFailure({required this.errMessage});
}

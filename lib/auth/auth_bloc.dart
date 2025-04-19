import 'package:bloc/bloc.dart';
import 'package:personal_finance_flutter/auth/auth_event.dart';
import 'package:personal_finance_flutter/auth/auth_state.dart';
import 'auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(AuthState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<LoginAction>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, errorMessage: null));
      try {
        await authRepository.signInWithEmailAndPassword(state.email, state.password);
        emit(state.copyWith(isSubmitting: false, isAuthenticated: true));
      } catch (e) {
        emit(state.copyWith(isSubmitting: false, errorMessage: e.toString()));
      }
    });

    on<LogoutAction>((event, emit) async {
      try {
        await authRepository.signOut();
        emit(state.copyWith(isAuthenticated: false));
      } catch (e) {
        emit(state.copyWith(isAuthenticated: false, errorMessage: e.toString()));
      }
    });
  }
}

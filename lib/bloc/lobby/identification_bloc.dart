// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
//
// // 이벤트 정의
// abstract class IdentificationEvent extends Equatable {
//   @override
//   List<Object> get props => [];
// }
//
// class DoIdentification extends IdentificationEvent {
//   final String phoneNumber;
//
//   DoIdentification(this.phoneNumber);
//
//   @override
//   List<Object> get props => [phoneNumber];
// }
//
// // 상태 정의
// abstract class IdentificationState extends Equatable {
//   @override
//   List<Object> get props => [];
// }
//
// class IdentificationInitial extends IdentificationState {}
//
// class IdentificationLoading extends IdentificationState {}
//
// class IdentificationSuccess extends IdentificationState {}
//
// class IdentificationFailure extends IdentificationState {
//   final String message;
//
//   IdentificationFailure(this.message);
//
//   @override
//   List<Object> get props => [message];
// }
//
// // BLoC 정의
// class IdentificationBloc extends Bloc<IdentificationEvent, IdentificationState> {
//   IdentificationBloc() : super(IdentificationInitial());
//
//   @override
//   Stream<IdentificationState> mapEventToState(IdentificationEvent event) async* {
//     if (event is DoIdentification) {
//       yield IdentificationLoading();
//       await Future.delayed(Duration(seconds: 2));  // API 호출 대신 딜레이
//
//       if (event.phoneNumber == "01012345678") {
//         yield IdentificationSuccess();
//       } else {
//         yield IdentificationFailure("인증에 실패했습니다. 다시 시도해주세요.");
//       }
//     }
//   }
// }

import 'package:equatable/equatable.dart';

import '../../../application/shared/shared.dart';

class WelcomeUiState extends Equatable {
  final UiStatus status;
  final String? userName;

  const WelcomeUiState({
    this.status = UiStatus.initial,
    this.userName,
  });

  @override
  List<Object?> get props => [status, userName];
}

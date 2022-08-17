import 'package:equatable/equatable.dart';

import '../../../../application/shared/shared.dart';

class NameFormUiState extends Equatable {
  final UiStatus status;

  const NameFormUiState({this.status = UiStatus.initial});

  @override
  List<Object?> get props => [status];
}

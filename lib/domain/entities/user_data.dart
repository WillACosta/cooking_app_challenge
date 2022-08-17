import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String name;
  final bool useDarkMode;

  const UserData({
    required this.name,
    required this.useDarkMode,
  });

  @override
  List<Object?> get props => [name, useDarkMode];
}

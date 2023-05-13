import 'package:nested/nested.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:station_center/src/home/bloc/home_bloc.dart';

List<SingleChildWidget> providers() {
  return [
    BlocProvider(
      create: (context) => HomeBloc(),
    ),
  ];
}

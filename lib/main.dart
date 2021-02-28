import 'package:chucknorris/bloc/details/chucknorris_bloc.dart';
import 'package:chucknorris/bloc/home/numbers_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        BlocProvider<ChucknorrisBloc>(create: (BuildContext context) => ChucknorrisBloc()),
        BlocProvider<NumbersBloc>(create: (BuildContext context) => NumbersBloc()),
      ],
      child: App(),
    ),
  );
}

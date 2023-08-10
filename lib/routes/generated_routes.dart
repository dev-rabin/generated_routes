// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/cubits/first_cubit.dart';
import 'package:generated_routes/cubits/second_cubit.dart';
import 'package:generated_routes/cubits/third_cubit.dart';
import 'package:generated_routes/presentation/first_screen.dart';
import 'package:generated_routes/presentation/second_screen.dart';
import 'package:generated_routes/presentation/third_screen.dart';

class Routes {
  static Routes? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/firstScreen":
        CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => FirstCubit(),
            child: FirstScreen(),
          ),
        );

      case "/secondScreen":
        CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SecondCubit(),
            child: SecondScreen(),
          ),
        );

      case "/thirdScreen":
        CupertinoPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ThirdCubit(),
            child: ThirdScreen(),
          ),
        );
      default:
        return null;
    }
  }
}

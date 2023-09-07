import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_generated_routes/cubits/first_screen_cubit.dart';
import 'package:flutter_bloc_generated_routes/cubits/second_screen_cubit.dart';
import 'package:flutter_bloc_generated_routes/cubits/third_screen_cubit.dart';
import 'package:flutter_bloc_generated_routes/screens/first_screen.dart';
import 'package:flutter_bloc_generated_routes/screens/second_screen.dart';
import 'package:flutter_bloc_generated_routes/screens/third_screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    Map<String, dynamic> arguments;
    switch (settings.name) {
      case "/first":
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => FirstScreenCubit(),
            child: const FirstScreen(),
          ),
        );

      case "/second":
        // Accessing the arguments passed into the route as a Map
        arguments = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SecondScreenCubit(),
            child: SecondScreen(title: arguments["title"]),
          ),
        );

      case "/third":
        arguments = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ThirdScreenCubit(),
            child: ThirdScreen(title: arguments["title"]),
          ),
        );

      default:
        return null;
    }
  }
}

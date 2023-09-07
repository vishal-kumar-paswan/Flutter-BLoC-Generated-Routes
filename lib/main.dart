import 'package:flutter/material.dart';
import 'package:flutter_bloc_generated_routes/routes.dart';

void main() {
  runApp(const BLoCCounter());
}

class BLoCCounter extends StatelessWidget {
  const BLoCCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: "/first",
    );
  }
}

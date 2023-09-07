import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_generated_routes/cubits/second_screen_cubit.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<SecondScreenCubit, int>(
              builder: (context, state) {
                return Text(state.toString());
              },
            ),
            const SizedBox(height: 10),
            CupertinoButton(
              color: Colors.orangeAccent,
              child: const Text('Move to third page'),
              onPressed: () {
                // Passing arguments through routes
                Navigator.pushNamed(
                  context,
                  "/third",
                  arguments: {"title": "This is third page"},
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          BlocProvider.of<SecondScreenCubit>(context).incrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

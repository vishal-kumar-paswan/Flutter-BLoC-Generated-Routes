import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_generated_routes/cubits/first_screen_cubit.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('This is first page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<FirstScreenCubit, int>(
              builder: (context, state) {
                return Text(state.toString());
              },
            ),
            const SizedBox(height: 10),
            CupertinoButton(
              color: Colors.blueAccent,
              child: const Text('Move to second page'),
              onPressed: () {
                // Passing arguments through routes
                Navigator.pushNamed(
                  context,
                  "/second",
                  arguments: {"title": "This is second page"},
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          BlocProvider.of<FirstScreenCubit>(context).incrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

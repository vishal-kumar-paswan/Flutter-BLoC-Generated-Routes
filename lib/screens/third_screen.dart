import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_generated_routes/cubits/third_screen_cubit.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<ThirdScreenCubit, int>(
              builder: (context, state) {
                return Text(state.toString());
              },
            ),
            const SizedBox(height: 10),
            CupertinoButton(
              color: Colors.redAccent,
              child: const Text('Back to first page'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          BlocProvider.of<ThirdScreenCubit>(context).incrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

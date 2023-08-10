// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/cubits/third_cubit.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Center(
        child: BlocBuilder(builder: (context, state) {
          return Text(
            state.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        BlocProvider.of<ThirdCubit>(context).increment();
      }),
    );
  }
}

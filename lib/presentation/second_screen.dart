// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/cubits/second_cubit.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/thirdScreen");
              },
              icon: Icon(Icons.arrow_forward))
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
        BlocProvider.of<SecondCubit>(context).increment();
      }),
    );
  }
}

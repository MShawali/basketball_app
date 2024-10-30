import 'package:counter_increment_app/cubit/counter_cubit.dart';
import 'package:counter_increment_app/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterIncrementApp());
}

class CounterIncrementApp extends StatelessWidget {
  const CounterIncrementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}

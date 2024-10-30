import 'package:counter_increment_app/constant.dart';
import 'package:counter_increment_app/cubit/counter_cubit.dart';
import 'package:counter_increment_app/cubit/counter_state.dart';
import 'package:counter_increment_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Basketball",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: kPrimeryKey,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointAIncrement}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140,
                        ),
                      ),
                      CustomButton(
                        onTap: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(team: "A", buttomNumber: 1);
                        },
                        text: "Add 1 point",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onTap: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(team: "A", buttomNumber: 2);
                        },
                        text: "Add 2 point",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onTap: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(team: "A", buttomNumber: 3);
                        },
                        text: "Add 3 point",
                      ),
                    ],
                  ),
                  Container(
                    height: 500,
                    width: 1,
                    child: const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 40,
                      indent: 40,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).pointBIncrement}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140,
                        ),
                      ),
                      CustomButton(
                        onTap: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(team: "B", buttomNumber: 1);
                        },
                        text: "Add 1 point",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onTap: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(team: "B", buttomNumber: 2);
                        },
                        text: "Add 2 point",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onTap: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(team: "B", buttomNumber: 3);
                        },
                        text: "Add 3 point",
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                onTap: () {
                  BlocProvider.of<CounterCubit>(context).pointAIncrement = 0;
                  BlocProvider.of<CounterCubit>(context).pointBIncrement = 0;
                  setState(() {
                    
                  });
                  
                },
                text: "Reast",
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

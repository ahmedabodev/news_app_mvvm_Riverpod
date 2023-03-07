import 'package:flutter/material.dart';
import 'widgets/listview_home.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: const [
          ListviewHome(),
        ],
      ),
    );
  }
}


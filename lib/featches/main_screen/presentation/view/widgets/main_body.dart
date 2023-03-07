import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/featches/main_screen/presentation/view_model/main_bottom_bar_revirpoid.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,  ref, Widget? child) {
      final main=ref.watch(mainBottomBarRevirpoid);
      return  main.screen[main.index];
    },);
  }
}

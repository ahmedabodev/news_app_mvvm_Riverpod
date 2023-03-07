import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_news_revirpoid/core/utils/style.dart';
import 'package:mvvm_news_revirpoid/featches/category/presentation/view_model/fetch_category_revipoid.dart';
import 'package:mvvm_news_revirpoid/featches/home/presentation/view_model/open_link.dart';

import 'widgets/listview_button.dart';
import 'widgets/listview_category.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListviewCategoryButton(),
        ListviewCategory(),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../view_model/featch_home_revipoid.dart';

class TextFormSearch extends StatelessWidget {
  const TextFormSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,  ref, Widget? child) {
      final item=ref.watch(fetchHomeRiverpod);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Row(
          children: [
            IconButton(onPressed: (){
              if(item.search=='general'){
                Navigator.pop(context);
              }else{
                item.changeSearch('general');
                Navigator.pop(context);
              }

            }, icon: const Icon(Icons.close)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  onChanged: (value){
                    item.changeSearch(value);
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.blue
                          )
                      ),
                      labelText: 'Search',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.white
                          )
                      ),
                      constraints: const BoxConstraints.expand(height: 45)
                  ) ,
                ),
              ),
            ),
          ],
        ),
      );
    },);
  }
}

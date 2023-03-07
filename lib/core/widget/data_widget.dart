import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_news_revirpoid/core/utils/style.dart';

class DataWidget extends StatelessWidget {

  String image;
  String title;
  String author;
  String publishedAt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        elevation: 10,
        child: Row(
          children: [
            SizedBox(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: image,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                  errorWidget: (context, url, error){
                    return Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png');
                  },

                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: Styles.textStyle12,),
                  const SizedBox(height: 8,),
                  (author=='null')?const SizedBox(): Text(author,style: Styles.textStyle12.copyWith(
                      color: Colors.blue
                  ),),
                  const SizedBox(height: 8,),

                  Text(publishedAt,style: Styles.textStyle12,),
                  const SizedBox(height: 5,),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DataWidget({super.key,
    required this.image,
    required this.title,
    required this.publishedAt,
    required this.author,
  });
}

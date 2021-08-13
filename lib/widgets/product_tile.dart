import 'package:book_catalog/theme.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  // const ProductTile({ Key? key }) : super(key: key);
  final String title;
  final String publisher;
  final String imageURL;
  final int price;

  ProductTile(
      {required this.title,
      required this.publisher,
      required this.imageURL,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity - 60,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 5,
      ),
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            // *Photo Product
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageURL),
                ),
              ),
            ),
            Container(
              width: 150,
              margin: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: tBlackTextStyle.copyWith(
                      fontWeight: tSemiFontWeight,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    publisher,
                    style: tGreyTextStyle,
                  ),
                ],
              ),
            ),
            Container(
                child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.navigate_next),
            ))
          ],
        ),
      ),
    );
  }
}

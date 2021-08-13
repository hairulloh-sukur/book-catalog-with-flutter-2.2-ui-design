import 'package:book_catalog/pages/detail_page.dart';
import 'package:book_catalog/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  // const ProductCard({ Key? key }) : super(key: key);

  final String title;
  final String publisher;
  final String imageURL;
  final int price;

  ProductCard(
      {required this.title,
      required this.publisher,
      required this.imageURL,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                    title: title,
                    publisher: publisher,
                    imageURL: imageURL,
                    price: price)));
      },
      child: Container(
        width: 220,
        height: 240,
        margin: EdgeInsets.only(
          left: tMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(tRadius),
          color: tWhiteColor,
        ),
        child: Column(
          children: [
            // *Photo Product
            Container(
              width: 220,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(tRadius),
                ),
                image: DecorationImage(
                    image: AssetImage(imageURL), fit: BoxFit.cover),
              ),
            ),

            // *Description
            Container(
              margin: EdgeInsets.only(
                top: 8,
                left: 12,
                right: 12,
              ),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // *Title
                  Text(
                    title,
                    style: tBlackTextStyle.copyWith(
                      fontWeight: tSemiFontWeight,
                    ),
                    maxLines: 1,
                  ),
                  // *Publisher
                  Text(
                    publisher,
                    style: tGreyTextStyle,
                  ),
                  // *Price
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      NumberFormat.currency(
                        locale: 'id',
                        symbol: 'Rp. ',
                        decimalDigits: 0,
                      ).format(price),
                      style: tBlackTextStyle,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:book_catalog/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String publisher;
  final String imageURL;
  final int price;

  DetailPage(
      {required this.title,
      required this.publisher,
      required this.imageURL,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // *Photo Product
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage(imageURL),
              fit: BoxFit.cover,
            ),
          ),
          // *Button Back
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsets.only(
              top: tMargin,
              left: tMargin,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
              iconSize: 14,
            ),
            decoration: BoxDecoration(
              color: tWhiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          // *Detail Product
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height - 265,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 30,
                left: 30,
              ),
              decoration: BoxDecoration(
                  color: tWhiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(35),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: tBlackTextStyle.copyWith(
                      fontSize: 28,
                      fontWeight: tSemiFontWeight,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    publisher,
                    style: tGreyTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Description:',
                    style: tBlackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: tSemiFontWeight,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'This book description is not available',
                    style: tBlackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

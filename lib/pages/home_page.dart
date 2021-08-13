import 'package:book_catalog/theme.dart';
import 'package:book_catalog/widgets/product_card.dart';
import 'package:book_catalog/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // *Icon Menu
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_open),
            ),
            width: 18,
            height: 18,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              top: 20,
              left: 15,
            ),
          ),

          // *Slogan
          Container(
            child: Text(
              'Meet Your\nNext Favorite Books!',
              style: tBlackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: tSemiFontWeight,
              ),
            ),
            margin: EdgeInsets.only(
              top: tMargin,
              left: tMargin,
            ),
          ),

          // *Find
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Find your book',
                hintStyle: tGreyTextStyle,
                suffixIcon: Icon(
                  Icons.search,
                  color: tPurpleColor,
                ),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 0)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            margin: EdgeInsets.only(
              top: tMargin,
              left: tMargin,
              right: tMargin,
            ),
          ),

          // *Carousel - ProductCard
          Container(
            margin: EdgeInsets.only(
              top: tMargin,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    title: 'Handbook Pubertas Muslimah',
                    publisher: 'Ahlan',
                    imageURL: 'assets/buku_handbook_pubertas_muslimah.webp',
                    price: 130000,
                  ),
                  ProductCard(
                    title: 'Kisah Teladan Dalam Hadits',
                    publisher: 'Aqwam',
                    imageURL: 'assets/buku_kisah_teladan_dalam_hadits.webp',
                    price: 45000,
                  ),
                  ProductCard(
                    title: 'Fikih Wanita Islami',
                    publisher: 'Attuqa',
                    imageURL: 'assets/buku_fikih_wanita_islami.jpeg',
                    price: 45000,
                  ),
                ],
              ),
            ),
          ),

          // *Recommended for you
          Container(
            margin: EdgeInsets.all(tMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommended For You',
                  style: tBlackTextStyle.copyWith(
                      fontWeight: tSemiFontWeight, fontSize: 18),
                ),

                // *Product Tile
                ProductTile(
                  title: 'Fikih Wanita Islami',
                  publisher: 'Attuqa',
                  imageURL: 'assets/buku_fikih_wanita_islami.jpeg',
                  price: 45000,
                ),
                ProductTile(
                  title: 'Kisah Teladan Dalam Hadits',
                  publisher: 'Aqwam',
                  imageURL: 'assets/buku_kisah_teladan_dalam_hadits.webp',
                  price: 45000,
                ),
                ProductTile(
                  title: 'Handbook Pubertas Muslimah',
                  publisher: 'Ahlan',
                  imageURL: 'assets/buku_handbook_pubertas_muslimah.webp',
                  price: 130000,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

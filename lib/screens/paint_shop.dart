import 'package:apptinta/screens/cart.dart';
import 'package:apptinta/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PaintShop extends StatefulWidget {
  const PaintShop({super.key});

  @override
  State<PaintShop> createState() => _PaintShopState();
}

class _PaintShopState extends State<PaintShop> {
   int _selectedIndex = 0;

   final List<Widget> screens = [
    PaintShop(),
    Cart(),
    Profile(),
   ];

   final PageStorageBucket bucket = PageStorageBucket();
   Widget currentScreen = PaintShop();

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color.fromARGB(33, 190, 188, 188),
        child: ListView(
          children:<Widget> [
            Text(
              'Opções de tintas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                
              ),
            ),
            SizedBox(
              height:40,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                ),
              items: ['Suvinil Criativa','Coral Acrílica','Prolar Antimorfo','QualyColor Latex','Futura Preparador de Paredes'].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text('Tinta $i', textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1.0,
                      height: 15.0,
                      ),
                    ),
                  );
                },
              );
              }).toList(),
            ),
          ],
        ),
      ),
     
    );
  }
}
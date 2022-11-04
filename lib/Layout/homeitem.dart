import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yourpharmacy/Layout/category.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';
import 'package:yourpharmacy/components/model/model.dart';
import 'package:yourpharmacy/components/widget/widget.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';

class HomeItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: image.length,
                itemBuilder: ( _,int i,int r){
                  return Container(
                    width: double.infinity,
                    child: Image.network(image[i],fit: BoxFit.cover,),
                  );
                },
                options: CarouselOptions(
                  height: 200,
                  initialPage: 0,
                  reverse: false,
                  //enlargeCenterPage: true,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  autoPlayInterval:Duration(seconds: 5),
                  scrollDirection: Axis.horizontal,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlayCurve: Curves.fastOutSlowIn,


                )
            ),
            // CarouselSlider(
            //   items: [],
            //   options: CarouselOptions(
            //     height: 150,
            //     initialPage: 0,
            //     enlargeCenterPage: true,
            //     autoPlay: true,
            //     autoPlayInterval:Duration(seconds: 5),
            //     scrollDirection: Axis.horizontal,
            //     enableInfiniteScroll: false,
            //
            //
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (con,ind)=>CategoryHome(CategoryCircle[ind]),
                  separatorBuilder: (c,i)=>SizedBox(
                    width: 20,
                  ),
                  itemCount: CategoryCircle.length,
                ),
              ),
            ),
            ListOfItem('Offers',context,OffersList),
            ListOfItem('New',context,NewList),
            ListOfItem('Best Seller',context,OffersList),
            ListOfItem('Last Seen',context,NewList),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
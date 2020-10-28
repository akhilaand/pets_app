import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 320,

      child: ListView(
        shrinkWrap: true,

        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Category(
            images: 'images/cat_petapp.jpg',
            name: 'Rosy',
            breed: 'Persian Cat',
          ),

          Category(
            images: 'images/dog_petapp.jpg',
            name: 'Whisky',
            breed: 'Havanese Dog',
          ),

          Category(
            images: 'images/birds_petapp.jpg',
            name: 'Birds',
            breed: 'Agapornis',
          ),

          Category(
            images: 'images/rabbit_petapp.jpg',
            name: 'Rabbit',
            breed: 'Angora Rabbit',
          ),


        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  Category({this.name,this.images,this.breed});
  final String name;
  final images;
  final breed;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.all(5.0),
    child:Stack(
      children: <Widget>[
        Container(

            decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.fill,
                 image: AssetImage(images,
                 ),
             ),
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                  bottomLeft:  Radius.circular(30),
                  bottomRight:  Radius.circular(30),
                )
            ),

            height: 295,
            width:200),
        Positioned(
           bottom: 8,

          child: Container(

            decoration: BoxDecoration(
                color:Color(0xff989898),
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(30),
                  bottomLeft:  Radius.circular(30),
                  bottomRight:  Radius.circular(30),
                )
            ),

            height: 80,
            width:200
          ),
        )
      ],
    )
    // GridTile(
    //   footer:Text('hii')  ,
    //   // Container(
    //     // decoration: BoxDecoration(
    //     //     color: Colors.black,
    //     //     borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
    //     //       bottomLeft:  Radius.circular(30),
    //     //       bottomRight:  Radius.circular(30),
    //     //     )
    //     // ),
    //   // ),
    //  child: Container(
    //   height:180,
    //   width: 210,
    //   decoration: BoxDecoration(
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.shade300,
    //         spreadRadius: 3,
    //         blurRadius: 4,
    //         offset: Offset(5,7),
    //       )
    //     ],
    //     image: DecorationImage(
    //       fit: BoxFit.fill,
    //         image: AssetImage(images,
    //         )),
    //     color: Colors.black,
    //     borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
    //     bottomLeft:  Radius.circular(30),
    //       bottomRight:  Radius.circular(30),
    //     )
    //   ),
    //     ),
    // )

    );
  }
}

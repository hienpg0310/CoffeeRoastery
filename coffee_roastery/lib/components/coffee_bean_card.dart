import 'package:coffee_roastery/models/coffee_bean.dart';
import 'package:coffee_roastery/theme.dart';
import 'package:flutter/material.dart';

class CoffeeBeanCard extends StatelessWidget {
  final CoffeeBean coffeeBean;

  const CoffeeBeanCard({required this.coffeeBean});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
      },
      child: Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Container(
              height: 300.0,
              width: 225.0,
              child: Column(
                children: <Widget>[
                  Stack(children: [
                    Container(height: 345.0),
                    Positioned(
                        top: 75.0,
                        child: Container(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            height: 260.0,
                            width: 225.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Color(0xFFB68E72)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  SizedBox(
                                    height: 150.0,
                                  ),
                                  Text(
                                    coffeeBean.description,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        height: 50.0,
                                        width: 150.0,
                                        child: Text(
                                          'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                                          maxLines: 4,
                                          style: const TextStyle(
                                              fontFamily: 'SF Pro Display',
                                              fontSize: 12.0,
                                              // fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        ),
                                      ),
                                      // Container(
                                      //     height: 20.0,
                                      //     width: 20.0,
                                      //     decoration: BoxDecoration(
                                      //         borderRadius:
                                      //             BorderRadius.circular(20.0),
                                      //         color: Colors.white),
                                      //     child: Center(
                                      //         child: Icon(Icons.favorite,
                                      //             color: isFavorite
                                      //                 ? Colors.red
                                      //                 : Colors.grey,
                                      //             size: 12.0)))
                                    ],
                                  )
                                ]))),
                    Positioned(
                        top: 0.0,
                        child: Container(
                            height: 230.0,
                            width: 230.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(coffeeBean.pictureUrl),
                                    fit: BoxFit.contain))))
                  ]),
                ],
              ))),
    );
  }
}
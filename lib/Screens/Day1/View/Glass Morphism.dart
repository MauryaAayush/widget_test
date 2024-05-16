import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Glassmore extends StatelessWidget {
  const Glassmore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Glass Morphism',style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
          // Set the background image
          image: DecorationImage(
            image: AssetImage("assets/img/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
       child: Stack(
         children: [
           Positioned(
             top: 250,
             left: 230,
             child: ClipRRect(
               borderRadius: BorderRadius.circular(100),
               child: BackdropFilter(
                 filter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
                 child: Container(
                   height: 200,
                   width: 650,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.teal.withOpacity(0.2),width: 3),
                       borderRadius: BorderRadius.circular(100),
                       color: Colors.teal.withOpacity(0.3)
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                            Text('Glass',style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),),
                            Text('Morphism',style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(
                              height: 20,
                            ),
                            Text('mockup',style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            ),),
                         ],
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                             Container(
                               margin: EdgeInsets.only(right: 4,bottom: 5),
                               alignment: Alignment.center,
                               height: 20,
                               width: 30,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 border: Border.all(color: Colors.white)
                               ),
                               child: Text('4k',style: TextStyle(
                                  color: Colors.white,
                                 fontSize: 10),),
                             ),
                             Container(
                               margin: EdgeInsets.only(bottom: 5),
                               alignment: Alignment.center,
                               height: 20,
                               width: 30,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 border: Border.all(color: Colors.white)
                               ),
                               child: Text('PSD',style: TextStyle(
                                  color: Colors.white,
                                 fontSize: 10,
                                 fontWeight: FontWeight.w500
                               ),),
                             ),
                             ],
                           ),
                           Text('Isolated object &',style: TextStyle(
                               color: Colors.white70,
                               fontSize: 9,
                               fontWeight: FontWeight.w600,
                             letterSpacing: 1
                           ),),
                           Text('Editable colors',style: TextStyle(
                               color: Colors.white70,
                               fontSize: 9,
                               fontWeight: FontWeight.w600,
                             letterSpacing: 1
                           ),),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
             )
           )
         ],
       ),
      ),
    );
  }
}


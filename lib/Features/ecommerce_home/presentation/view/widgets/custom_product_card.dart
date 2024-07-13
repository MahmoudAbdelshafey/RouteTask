import 'package:flutter/material.dart';
import 'package:route_task/core/constants.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: AppConstants.kPrimaryColor.withOpacity(0.3), width: 2)),
      child: Column(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.topRight,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18)),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/product.jpg',
                    ),
                    fit: BoxFit.fitWidth)),
            child:const  Padding(
              padding:  EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 16,
                child: Icon(
                  Icons.favorite_border,
                  color: AppConstants.kPrimaryColor,
                  size: 20,
                ),
              ),
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child:const  Text(
                        'Nike Air Jordon Nike shoes flexible for woasdfasdfasd',
                        style: TextStyle(
                            fontSize: 14,
                            color: AppConstants.kPrimaryColor,
                            fontWeight: FontWeight.w400),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '100\$',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('\$8.99',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: AppConstants.kPrimaryColor
                                      .withOpacity(0.6))),
                          SizedBox(width: 30,)
                        ],
                      ),
                    )),
                Expanded(flex: 3, child: Container(
                  padding:const  EdgeInsets.all(8),
                  child: Row(
                    children: [
                     const  Text('Review (4.8)', style: TextStyle(
                        fontSize: 12,
                        color: AppConstants.kPrimaryColor,
                        fontWeight: FontWeight.bold

                      ),),
                    const   SizedBox(width: 5,),
                      Image.asset('assets/images/star.png'),
                    const   Spacer(),
                    const   CircleAvatar(
                        child: Icon(Icons.add, color: Colors.white,),
                        radius: 15,
                        backgroundColor: AppConstants.kPrimaryColor,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage("https://scontent-hkg4-2.xx.fbcdn.net/v/t39.30808-1/280155783_2130334677136256_864375686687126886_n.jpg?stp=dst-jpg_p200x200&_nc_cat=104&ccb=1-7&_nc_sid=7206a8&_nc_ohc=OQW4hWC0nUIAX87AMu8&_nc_ht=scontent-hkg4-2.xx&oh=00_AT90HAUBrEkxSpIDF12dntyHXKMDmGBox_Jz2vKc726qaQ&oe=628D55EB"),
    );
  }
}
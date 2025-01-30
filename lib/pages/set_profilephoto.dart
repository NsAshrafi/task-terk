import 'package:flutter/material.dart';


class SetProfilePhotoPage extends StatelessWidget {
  const SetProfilePhotoPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/img/profiles/1.jpg',
      'assets/img/profiles/2.jpg',
      'assets/img/profiles/3.jpg',
      'assets/img/profiles/4.jpg',
      'assets/img/profiles/5.jpg',
      'assets/img/profiles/6.jpg',
      'assets/img/profiles/7.jpg',
      'assets/img/profiles/8.jpg',
      'assets/img/profiles/9.jpg',
    ];
    return Scaffold (
      appBar:AppBar(
        title: const Text('If You Were An Animal'),
         backgroundColor: Colors.blueAccent,
      ) ,
      
      );
  }
}


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       decoration: BoxDecoration(
  //         image: DecorationImage(
  //           image: AssetImage('assets/img/backsign.jpg'),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //     ),
  //   );
  // }
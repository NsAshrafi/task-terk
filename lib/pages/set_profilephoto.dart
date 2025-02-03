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
      'assets/img/profiles/10.jpg',
      'assets/img/profiles/11.jpg',
      'assets/img/profiles/12.jpg',
      'assets/img/profiles/13.jpg',
      'assets/img/profiles/5.jpg',
      'assets/img/profiles/6.jpg',
      'assets/img/profiles/7.jpg',
      'assets/img/profiles/8.jpg',
      'assets/img/profiles/9.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Profile Photo'),
        // backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/backsign.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pop(context, imagePaths[index]); 
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), 
                      border: Border.all(color: Colors.blue, width: 2),
                      image: DecorationImage(
                        image: AssetImage(imagePaths[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
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
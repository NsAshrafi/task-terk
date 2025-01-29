import 'package:flutter/material.dart';
import 'package:task_terk/pages/set_profilephoto.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/backsign.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(
                height: 145,
                width: 145,
                decoration: BoxDecoration(
                  // image: const DecorationImage(
                  //   image: AssetImage('assets/img/logomainn.png'),
                  //   fit: BoxFit.cover,
                  // ),
                  borderRadius: BorderRadius.circular(70.5),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                child: const Icon(Icons.person, size: 80, color: Colors.grey),
              ),
              const SizedBox(height: 10),
           
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SetProfilePhotoPage()),
                  );
                },
                child: const Text(
                  'Set Profile Photo',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent, decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Age',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
               const SizedBox(height: 20),
              // TextField(
              //   decoration: InputDecoration(
              //     labelText: 'Confirm Password',
              //     fillColor: Colors.white,
              //     filled: true,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.blueAccent,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()),
                      );
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
            
//             Container(
//               width: 150,
//               height: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(75),
//                 border: Border.all(color: Colors.grey, width: 2),
//               ),
//               child: const Icon(Icons.person, size: 80, color: Colors.grey),
//             ),
//             const SizedBox(height: 10),
           
//             const Text(
//               'Set Profile Photo',
//               style: TextStyle(fontSize: 18, color: Colors.blueAccent),
//             ),
//             const SizedBox(height: 20),
            
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
           
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30), 
            
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 backgroundColor: Colors.blueAccent,
//               ),
//               onPressed: () {
                
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('Start Button Pressed!')),
//                 );
//               },
//               child: const Text(
//                 'Start',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:task_terk/pages/home_page.dart';
import 'package:task_terk/pages/set_profilephoto.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? selectedImage;
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
            children: [
              GestureDetector(
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SetProfilePhotoPage()),
                  );
                  if (result != null) {
                    setState(() {
                      selectedImage = result;
                    });
                  }
                },
                child: Container(
                  height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70.5),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    image: selectedImage != null
                        ? DecorationImage(
                            image: AssetImage(selectedImage!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: selectedImage == null
                      ? const Icon(Icons.person, size: 80, color: Colors.grey)
                      : null,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SetProfilePhotoPage()),
                  );
                  if (result != null) {
                    setState(() {
                      selectedImage = result;
                    });
                  }
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
                        builder: (context) => const HomePage()),
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

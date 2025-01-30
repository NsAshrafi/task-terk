import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Terk',
          style: TextStyle(
            fontFamily: 'Billabong', 
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        //deleted this for a while
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.view_sidebar_outlined),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage('assets/img/profiles/${index + 1}.jpg'),
                      ),
                      const SizedBox(height: 5),

                      SizedBox(
                        width: 70,
                        child: Text('Company ${index + 1}',
                            style: const TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            ),
                            
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(),

          
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/img/logo.jpg'),
                      ),
                      title: Text('Company ${index + 1}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),

                    // Post Image
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/img/posts/${index + 1}.jpg'), 
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.favorite_border),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.comment),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.send),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.bookmark_border),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Liked by User123 and others',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                                    'Company ${index + 1}:🚀 We\'re Hiring! 🚀\n\n'
                          'Are you ready to take your career to the next level? 📈 Join **Company Name** and be part of an innovative team that’s shaping the future! 🌍✨\n\n'
                          '🔹 **Position:** Software Engineer\n'
                          '🔹 **Location:** Remote\n'
                          '🔹 **Requirements:** Flutter, Firebase, and UI/UX experience\n\n'
                          '🏆 **The race is on!** Apply now and stand out among the best. Don’t miss your chance to be part of something great! 💼🔥\n\n'
                          '📩 Apply today: //http/....\n\n',
                           style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ),
        ],
      ),

      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

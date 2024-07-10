import 'package:flutter/material.dart';

import '../data/data.dart';
import 'kcolors.dart';

class AnaMenu extends StatefulWidget {
  const AnaMenu({super.key});

  @override
  State<AnaMenu> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AnaMenu> {
  String currentGreetings = '';
  DateTime currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    if (currentTime.hour < 12) {
      currentGreetings = 'Good Morning';
    } else if (currentTime.hour < 17) {
      currentGreetings = 'Good Afternoon';
    } else {
      currentGreetings = 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          currentGreetings,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Made For Yusuf',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 270,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().songs.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                Data().songs[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().songs[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              Data().songs[index].artist,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Your top mixes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().topmixs.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().topmixs[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().topmixs[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Artists',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().artists.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().artists[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().artists[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Top hits',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().tophits.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().tophits[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().tophits[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Podcasts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().podcasts.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().podcasts[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().podcasts[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true, // Seçili öğenin label alanının görünürlüğünü ayarlamak için kullanılır. Varsayılan değeri true'dur.
        showUnselectedLabels: true, // Seçili öğenin dışındaki öğelerin label alanının görünürlüğünü ayarlamak için kullanılır. Varsayılan değeri true'dur.
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
        onTap: (index) => { // Öğelerden biri seçildiğinde çalışan metoddur. Paramatere olarak seçilen öğenin index değeri ile beslenir.
          print(index)
        },
      ),
    );
  }
}
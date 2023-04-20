import 'package:flutter/material.dart';
import 'package:youtube_ui_clone/model/video_model.dart';
import 'package:youtube_ui_clone/ui/video_card.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<VideoModel> items = [
    VideoModel(
      "https://imgs.search.brave.com/Rm-fSg8gaRKQWUYTalzT9s7-RfGbK6eSclIaRmPCTx4/rs:fit:948:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC40/M1VGbV9xOGlteE9i/OVBjNFlhZjZBSGFE/dCZwaWQ9QXBp",
      "Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture",
      "22:06",
      "https://imgs.search.brave.com/GOU_o8BotzMT4Vn6vOL0vxEphdldRrd73tnTQBnFU2A/rs:fit:416:416:1/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vdmVjdG9y/cy9kZWZhdWx0LXBy/b2ZpbGUtcGljdHVy/ZS1hdmF0YXItcGhv/dG8tcGxhY2Vob2xk/ZXItdmVjdG9yLWls/bHVzdHJhdGlvbi12/ZWN0b3ItaWQxMjE0/NDI4MzAwP2s9NiZt/PTEyMTQ0MjgzMDAm/cz0xNzA2NjdhJnc9/MCZoPWhNUXMtODIy/eExXRno2NnozWGZk/OHZQb2czMzNyTkZI/VTZRX2tjOVN1ZXM9",
      "Swastik Thiramdas",
      "8K",
      "mar 14, 2020",
    ),
    VideoModel(
      "https://imgs.search.brave.com/4hkydIkH9gqXR9kBmkfZtKlnf_Q-9mMyfzF6nbNbbBI/rs:fit:1024:533:1/g:ce/aHR0cHM6Ly9jZG4u/c2hvcnRwaXhlbC5h/aS9jbGllbnQvcV9s/b3NzbGVzcyxyZXRf/aW1nL2h0dHBzOi8v/ZXhpc3Rlay5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMTkv/MDYvZmx1dHRlci1k/ZXZlbG9wbWVudC5q/cGc",
      "Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture",
      "22:06",
      "https://imgs.search.brave.com/GOU_o8BotzMT4Vn6vOL0vxEphdldRrd73tnTQBnFU2A/rs:fit:416:416:1/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vdmVjdG9y/cy9kZWZhdWx0LXBy/b2ZpbGUtcGljdHVy/ZS1hdmF0YXItcGhv/dG8tcGxhY2Vob2xk/ZXItdmVjdG9yLWls/bHVzdHJhdGlvbi12/ZWN0b3ItaWQxMjE0/NDI4MzAwP2s9NiZt/PTEyMTQ0MjgzMDAm/cz0xNzA2NjdhJnc9/MCZoPWhNUXMtODIy/eExXRno2NnozWGZk/OHZQb2czMzNyTkZI/VTZRX2tjOVN1ZXM9",
      "Swastik Thiramdas",
      "2K",
      "sep 14, 2020",
    ),
    VideoModel(
      "https://imgs.search.brave.com/XBuJ_izRn6hxg3M7m2GzM28GRLwoiQe97SCDiDXXTLk/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5Z/dm1kcW94Y0hUcmNF/WS1XYnc3enV3SGFF/SyZwaWQ9QXBp",
      "Build Flutter Apps Fast with Riverpod, Firebase, Hooks, and Freezed Architecture",
      "22:06",
      "https://imgs.search.brave.com/GOU_o8BotzMT4Vn6vOL0vxEphdldRrd73tnTQBnFU2A/rs:fit:416:416:1/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vdmVjdG9y/cy9kZWZhdWx0LXBy/b2ZpbGUtcGljdHVy/ZS1hdmF0YXItcGhv/dG8tcGxhY2Vob2xk/ZXItdmVjdG9yLWls/bHVzdHJhdGlvbi12/ZWN0b3ItaWQxMjE0/NDI4MzAwP2s9NiZt/PTEyMTQ0MjgzMDAm/cz0xNzA2NjdhJnc9/MCZoPWhNUXMtODIy/eExXRno2NnozWGZk/OHZQb2czMzNyTkZI/VTZRX2tjOVN1ZXM9",
      "Swastik Thiramdas",
      "4K",
      "jan 14, 2020",
    ),
  ];

  List<String> labels = [
    "All",
    "Gaming",
    "Programming",
    "Music",
    "Flutter",
    "App Development",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset("assets/YouTube-Logo.webp", width: 120),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/blog-app-b1755.appspot.com/o/IMG.jpg?alt=media&token=6eb97b64-add6-478f-a6e3-eea992c5ef2a")),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Explore",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                    itemCount: labels.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          elevation: 0,
                          label: Text(labels[index]),
                          onSelected: (val) {},
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  "Recommended",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    videoCard(items[0]),
                    videoCard(items[1]),
                    videoCard(items[2]),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white70,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_lira),
              label: "Shorts",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 48,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: "Subscriptions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add_outlined), label: "Library"),
          ],
        ),
      ),
    );
  }
}

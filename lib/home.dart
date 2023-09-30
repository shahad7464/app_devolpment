import 'package:flutter/material.dart';

class PortraitScreenLayout extends StatelessWidget {
  const PortraitScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: screenSize.width / 2,
                  child: CircleAvatar(
                    radius: (screenSize.width / 2),
                    backgroundImage: const NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:1080/0*pw9xsKqnq2dkGT4P'),
                  ),
                ),
                const Text(
                  'One Piece',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'One Piece is is a Japanese Anime Series.The story follows the adventure of Monkey D.Luffy a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit.',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.count(
              physics: const ScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                for (int i = 1; i <= 12; i++)
                  Image.asset(
                      "assets/images/shanks.jpg",
                      fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LandscapeScreenLayout extends StatelessWidget {
  const LandscapeScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: screenSize.width / 6,
            child: CircleAvatar(
              radius: (screenSize.width / 6),
              backgroundImage: const NetworkImage(
                  'https://miro.medium.com/v2/resize:fit:1080/0*pw9xsKqnq2dkGT4P'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: (screenSize.width) - (screenSize.width / 3) - 26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'One Piece',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'One Piece is is a Japanese Anime Series.The story follows the adventure of Monkey D.Luffy a boy whose body gained the properties of rubber after unintentionally eating a Devil Fruit.',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.count(
                    physics: const ScrollPhysics(),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: [
                      for (int i = 1; i <= 12; i++)
                        Image.asset(
                          "assets/images/shanks.jpg",
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
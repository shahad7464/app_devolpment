import 'package:flutter/material.dart';

void main() {
  runApp(
    const LiveTest(),
  );
}

class LiveTest extends StatelessWidget {
  const LiveTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,

      ),
      home: NewsFeed(),
    );
  }
}
class NewsFeed extends StatelessWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 300,
                      children: [
                        Image.network(
                          'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(
                        spacing: 300,
                        children: [
                          Image.network(
                            'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://img.freepik.com/premium-photo/casual-type-luffy-logo-wearing-hat-1_640251-528.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://i.pinimg.com/1200x/7a/cc/91/7acc915aca6f5b0da711877b896b712f.jpg',
                            height: 150,
                            width: 150,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
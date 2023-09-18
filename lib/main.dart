import 'package:flutter/material.dart';

void main() {
  runApp(Assignment());
}

class Assignment extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhotoGallery(),
    );
  }
}

class PhotoGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(16.0),
              child: const Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(12.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(18.0),
              child: Wrap(
                spacing: 15.0,
                runSpacing: 12.0,
                children: [
                  _buildPhotoButton(
                    imageUrl: 'https://images.pexels.com/photos/9954174/pexels-photo-9954174.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                    caption: 'Photo 0',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 0!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg?auto=compress&cs=tinysrgb&w=1200',
                    caption: 'Photo 1',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 1!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://images.pexels.com/photos/1317844/pexels-photo-1317844.jpeg?auto=compress&cs=tinysrgb&w=1200',
                    caption: 'Photo 2',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 2!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://images.pexels.com/photos/9954174/pexels-photo-9954174.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                    caption: 'Photo 3',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 3!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://images.pexels.com/photos/3777622/pexels-photo-3777622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    caption: 'Photo 4',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 4!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://images.pexels.com/photos/6897077/pexels-photo-6897077.jpeg?auto=compress&cs=tinysrgb&w=1200',
                    caption: 'Photo 5',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 5!');
                    },
                  ),
                ],
              ),
            ),
            const ListTile(

              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/6897077/pexels-photo-6897077.jpeg?auto=compress&cs=tinysrgb&w=1200'),
              ),
              title: Text('Photo 1'),
              subtitle: Text('Outstanding Pictures!'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/2361952/pexels-photo-2361952.jpeg?auto=compress&cs=tinysrgb&w=1200'),
              ),
              title: Text('Photo 2'),
              subtitle: Text('Nice Picture!'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/1317844/pexels-photo-1317844.jpeg?auto=compress&cs=tinysrgb&w=1200'),
              ),
              title: Text('Photo 3'),
              subtitle: Text('Great Picture!'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSnackBar(context, 'Photos Uploaded Successfully!');
        },
        child: const Icon(Icons.upload),
      ),
    );
  }

  Widget _buildPhotoButton({
    required String imageUrl,
    required String caption,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.network(
              imageUrl,
              width: 105.0,
              height: 55.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              caption,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

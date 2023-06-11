import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search Photos',
                  hintText: 'Enter a keyword',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  photoButton(
                      'https://wallpapers.com/images/high/kyuubi-nine-tailed-fox-ycttgiblrqeyggn0.webp',
                      'Caption',
                      context),
                  photoButton(
                      'https://wallpapers.com/images/high/kyuubi-nine-tailed-fox-ycttgiblrqeyggn0.webp',
                      'Caption',
                      context),
                  photoButton(
                      'https://wallpapers.com/images/high/kyuubi-nine-tailed-fox-ycttgiblrqeyggn0.webp',
                      'Caption',
                      context),
                  photoButton(
                      'https://wallpapers.com/images/high/kyuubi-nine-tailed-fox-ycttgiblrqeyggn0.webp',
                      'Caption',
                      context),
                  photoButton(
                      'https://wallpapers.com/images/high/kyuubi-nine-tailed-fox-ycttgiblrqeyggn0.webp',
                      'Caption',
                      context),
                  photoButton(
                      'https://wallpapers.com/images/high/kyuubi-nine-tailed-fox-ycttgiblrqeyggn0.webp',
                      'Caption',
                      context),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 1'),
                  subtitle: Text('Description 1'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 2'),
                  subtitle: Text('Description 2'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 3'),
                  subtitle: Text('Description 3'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.cloud_upload),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Photos Uploaded Successfully!'),
            ),
          );
        },
      ),
    );
  }

  Widget photoButton(String imageUrl, String caption, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Clicked on photo!'),
          ),
        );
      },
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 100.0,
            height: 100.0,
            cacheHeight: 275,
            cacheWidth: 275,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(caption),
        ],
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
    );
  }
}

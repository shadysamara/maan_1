import 'package:flutter/material.dart';
import 'package:maan_1_2/gallery_page.dart';

void main() {
  runApp(MaterialApp(
    home: GalleryPage(),
  ));
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String title = 'First Widget';
  String appbarTitle = 'Buttons';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(appbarTitle),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // background
                      // foreground
                    ),
                    onPressed: () {
                      appbarTitle = 'Omar';
                      setState(() {});
                    },
                    child: Text('press on me')),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // background
                      // foreground
                    ),
                    onPressed: () {
                      appbarTitle = 'buttons';
                      setState(() {});
                    },
                    child: Text('print title')),
              ),
            ],
          ),
        ));
  }
}

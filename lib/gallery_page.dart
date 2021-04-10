import 'package:flutter/material.dart';
import 'package:maan_1_2/gallery_element.dart';

class GalleryPage extends StatelessWidget {
  List<GalleryElement> galleryElement = [
    GalleryElement(
        imageUrl:
            'https://images.unsplash.com/photo-1562813733-b31f71025d54?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
        title: 'MAKEUP'),
    GalleryElement(
        imageUrl:
            'https://images.unsplash.com/photo-1596003906949-67221c37965c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZ3JhbW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
        title: 'MAKEUP2'),
    GalleryElement(
        imageUrl:
            'https://images.unsplash.com/photo-1510915228340-29c85a43dcfe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZ3JhbW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
        title: 'CLOTHES'),
    GalleryElement(
        imageUrl:
            'https://images.unsplash.com/photo-1534665482403-a909d0d97c67?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZ3JhbW1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60',
        title: 'CLOTHES2'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: galleryElement.map((e) {
                return GalleryWidget(e.imageUrl, e.title);
              }).toList()),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  children: galleryElement.map((e) {
                return GalleryWidget(e.imageUrl, e.title);
              }).toList()),
            ),
          ),
        ],
      ),
    );
  }
}

class GalleryWidget extends StatelessWidget {
  String imagePath;
  String title;
  GalleryWidget(this.imagePath, this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.multiply),
                    child: Container(
                      color: Colors.red,
                      width: 400,
                      child: Image.network(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            )),
        Positioned.fill(
          child: Center(
            child: Text(title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                )),
          ),
        )
      ],
    );
  }
}

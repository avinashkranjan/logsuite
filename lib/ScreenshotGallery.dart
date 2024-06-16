import 'dart:io';
import 'package:flutter/material.dart';


class ScreenshotGallery extends StatelessWidget {
  final List<String> screenshotPaths;


  ScreenshotGallery({required this.screenshotPaths});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screenshot Gallery'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns in grid
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: screenshotPaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullScreenImage(
                    imagePaths: screenshotPaths,
                    initialIndex: index,
                  ),
                ),
              );
            },
            child: Image.file(
              File(screenshotPaths[index]),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}




class FullScreenImage extends StatefulWidget {
  final List<String> imagePaths;
  final int initialIndex;


  FullScreenImage({required this.imagePaths, required this.initialIndex});


  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}


class _FullScreenImageState extends State<FullScreenImage> {
  late PageController _pageController;
  late ValueNotifier<String> _imageNameNotifier;


  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
    _imageNameNotifier = ValueNotifier<String>(
      _extractFileName(widget.imagePaths[widget.initialIndex]),
    );


    _pageController.addListener(() {
      int currentPage = _pageController.page?.round() ?? 0;
      _imageNameNotifier.value = _extractFileName(widget.imagePaths[currentPage]);
    });
  }


  @override
  void dispose() {
    _pageController.dispose();
    _imageNameNotifier.dispose();
    super.dispose();
  }


  String _extractFileName(String path) {
    return path.split('/').last;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: ValueListenableBuilder<String>(
          valueListenable: _imageNameNotifier,
          builder: (context, imageName, child) {
            return Text(imageName);
          },
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.imagePaths.length,
        itemBuilder: (context, index) {
          return Center(
            child: Image.file(
              File(widget.imagePaths[index]),
              fit: BoxFit.contain,
            ),
          );
        },
      ),
    );
  }
}




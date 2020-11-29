import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Container(
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                  key: Key("Image"),
                ),
              ),
              elevation: 6,
            ),
          ],
        ),
      ),
    );
  }
}

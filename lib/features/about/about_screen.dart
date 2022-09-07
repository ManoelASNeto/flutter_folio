import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: const [
            Image(
              image: NetworkImage(
                  'https://miro.medium.com/max/1400/0*CZIHfc84uj0rrhu-'),
            ),
          ],
        ),
      ),
    );
  }
}

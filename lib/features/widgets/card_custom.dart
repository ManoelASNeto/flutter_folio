import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String? image;
  final String? description;
  final String? toolsUsed;
  final bool isImageRight;
  const CardCustom({
    super.key,
    required this.image,
    required this.description,
    this.toolsUsed,
    this.isImageRight = false,
  });

  @override
  Widget build(BuildContext context) {
    final itemsContent = [
      Image.asset(
        image!,
        height: 320,
        width: 280,
      ),
      const SizedBox(
        width: 80,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            toolsUsed!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    ];
    return Container(
      margin: const EdgeInsets.all(30),
      height: 300,
      width: MediaQuery.of(context).size.width - 80,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              isImageRight ? itemsContent.reversed.toList() : itemsContent,
        ),
      ),
    );
  }
}

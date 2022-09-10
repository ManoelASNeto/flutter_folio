import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String? image;
  final String? description;
  final String? toolsUsed;
  const CardCustom({
    super.key,
    required this.image,
    required this.description,
    this.toolsUsed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      height: 300,
      width: MediaQuery.of(context).size.width - 80,
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Image.asset(
                image!,
                height: 320,
                width: 280,
              ),
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
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
          ),
        ],
      ),
    );
  }
}

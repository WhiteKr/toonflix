import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';

class Webtoon extends StatelessWidget {
  final WebToonModel webtoon;

  const Webtoon({
    super.key,
    required this.webtoon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                offset: const Offset(10, 10),
                color: Colors.black.withOpacity(0.5),
              )
            ],
          ),
          child: Image.network(webtoon.thumb),
        ),
        const SizedBox(height: 10),
        Text(
          webtoon.title,
          style: const TextStyle(fontSize: 22),
        ),
      ],
    );
  }
}

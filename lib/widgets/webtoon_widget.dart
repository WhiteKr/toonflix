import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/screens/detail_screen.dart';
import 'package:toonflix/widgets/webtoon_thumbnail.dart';

class Webtoon extends StatelessWidget {
  final WebToonModel webtoon;

  const Webtoon({
    super.key,
    required this.webtoon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(webtoon: webtoon),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: webtoon.id,
            child: WebtoonThumbnail(webtoon.thumb),
          ),
          const SizedBox(height: 10),
          Text(
            webtoon.title,
            style: const TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}

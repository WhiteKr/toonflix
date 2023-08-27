import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/widgets/webtoon_thumbnail.dart';

class DetailScreen extends StatelessWidget {
  final WebToonModel webtoon;

  const DetailScreen({
    super.key,
    required this.webtoon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        title: Text(
          webtoon.title,
          style: const TextStyle(fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: webtoon.id,
                child: WebtoonThumbnail(webtoon.thumb),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

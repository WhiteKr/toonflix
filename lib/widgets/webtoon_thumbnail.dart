import 'package:flutter/material.dart';

class WebtoonThumbnail extends StatelessWidget {
  final String? src;

  const WebtoonThumbnail(
    String this.src, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Image.network(src!),
    );
  }
}

import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner(this._assetPath, {super.key});

  final String _assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 250.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(0, 10),
            blurRadius: 10,
          )
        ],
      ),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {Key? key, required this.photo, this.onTap, required this.width})
      : super(key: key);
  final String photo;
  final void Function()? onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: this.photo,
      child: SizedBox(
        width: this.width,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.network(
              this.photo,
            ),
          ),
        ),
      ),
    );
  }
}

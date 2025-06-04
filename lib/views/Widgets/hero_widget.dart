import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20),
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUvNwRaQyfbvvCAKljTXewe8Y6hQpHSkb6xg4qoZCnG89fIKbNJJV6ennd9hNeYuPYCSo&usqp=CAU',

          color: Colors.teal,
          colorBlendMode: BlendMode.hue,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.amber,
                  // Colors.black,
                ]),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.white, width: 4),
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ],
    );
  }
}

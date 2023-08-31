import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors=Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(10)

          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal:20, vertical: 10),
            child: Text(
              'uwu',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        _ImageBubble(),
        const SizedBox(height:10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) 
  {

    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network('https://yesno.wtf/assets/no/23-5fe6c1ca6c78e7bf9a7cf43e406fb8db.gif',
      width: size.width *.70,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if(loadingProgress == null) return child;

        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: const Text('Cragando imagen'),
        );
      },));
  }
}
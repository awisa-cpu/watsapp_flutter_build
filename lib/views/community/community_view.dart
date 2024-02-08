import 'package:flutter/material.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    const font = TextStyle(fontFamily: 'Roboto', fontSize: 12);
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              'Introducing Communities',
              style: font,
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              width: 350,
              child: Text(
                '    Easily Organise your related groups amd send announcements.',
                style: font,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 350,
              child: Text(
                '  Now, your communities, like neighbourhoods or schools, can have',
                style: font,
              ),
            ),
            const Text(
              'their own space.',
              style: font,
            ),
            const SizedBox(
              height: 35,
            ),
            InkWell(
              enableFeedback: false,
              child: Container(
                width: 300,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: const Text(
                  'Start your community',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}

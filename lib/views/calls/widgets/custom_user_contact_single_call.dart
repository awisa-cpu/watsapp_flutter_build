import 'package:flutter/material.dart';

class CustomUserContactSingleCall extends StatelessWidget {
  const CustomUserContactSingleCall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: 

      const CircleAvatar(
        radius: 38,
        backgroundColor: Colors.teal,
        child: CircleAvatar(
          radius: 23,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
      ),
      title: const Text('Username'),
      subtitle: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_outward_rounded, color: Colors.green),
          Text('Just now', style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.call,
          color: Colors.teal,
        ),
      ),
      isThreeLine: true,
      dense: true,
      enableFeedback: false,
    );
  }
}

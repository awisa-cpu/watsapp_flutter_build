import 'package:flutter/material.dart';

class CustomUserCallLink extends StatelessWidget {
  const CustomUserCallLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.teal,
        radius: 30,
        child: Icon(
          Icons.link,
          color: Colors.white,
        ),
      ),
      title: const Text(
        'Create call link',
        style: TextStyle(color: Colors.grey),
      ),
      subtitle: Text(
        'Share a link for your WhatsaApp call',
        style: TextStyle(color: Colors.grey.shade700),
      ),
      isThreeLine: true,
      dense: true,
      contentPadding: EdgeInsets.zero,
    );
  }
}

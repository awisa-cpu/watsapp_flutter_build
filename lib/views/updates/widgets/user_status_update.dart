import 'package:flutter/material.dart';

class UserStatusUpdate extends StatelessWidget {
  const UserStatusUpdate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            Positioned(
              left: 30,
              top: 35,
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 16.5,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.teal,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          'My status\nTap to add status update',
          style: TextStyle(color: Colors.grey.shade700),
        )
      ],
    );
  }
}

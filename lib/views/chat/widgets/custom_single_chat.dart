import 'package:flutter/material.dart';
import 'package:watsappproject/utils/formatters/formatters.dart';
import 'package:watsappproject/utils/constants/routes_constants/constants.dart';

class CustomSingleChat extends StatelessWidget {

  ///this will recieve the user object 
  const CustomSingleChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed(
            personalChats,
          );
        },
        leading: const CircleAvatar(
          radius: 38,
          backgroundColor: Colors.teal,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
        ),
        title: const Text('Username'),
        subtitle: const Text('Last message', style: TextStyle(fontSize: 12)),
        trailing: Text(CustomFormatters.dateFormatter(DateTime.now())),
        isThreeLine: true,
        dense: true,
        enableFeedback: false,
      ),
    );
  }
}

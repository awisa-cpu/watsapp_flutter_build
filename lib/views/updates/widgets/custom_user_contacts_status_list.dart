import 'package:flutter/material.dart';
import 'package:watsappproject/views/updates/widgets/user_status_update.dart';

class CustomUserContactsStatusList extends StatelessWidget {
  const CustomUserContactsStatusList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, _) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: UserStatusUpdate(),
      ),
    );
  }
}

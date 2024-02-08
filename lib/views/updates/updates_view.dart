import 'package:flutter/material.dart';

import '../common/widgets/custom_float_action_button.dart';
import 'widgets/custom_user_contacts_status_list.dart';
import 'widgets/user_status_update.dart';

class UpdatesView extends StatelessWidget {
  const UpdatesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //user update status
              UserStatusUpdate(),
              SizedBox(height: 18),
              Text('Recent updates', style: TextStyle(color: Colors.grey)),

              //other users status
              CustomUserContactsStatusList()
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //text status button
          SizedBox(
            height: 45,
            width: 45,
            child: CustomFloatActionButton(
              icon: Icons.edit,
              onPressed: () {},
              backgroundColor: Colors.tealAccent[100],
              iconColor: Colors.teal,
            ),
          ),
          const SizedBox(height: 20),
          //
          CustomFloatActionButton(
            icon: Icons.photo_camera,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

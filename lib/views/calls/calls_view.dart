import 'package:flutter/material.dart';
import 'package:watsappproject/views/common/widgets/custom_float_action_button.dart';

import 'widgets/custom_user_call_link.dart';
import 'widgets/custom_user_contact_single_call.dart';

class CallsView extends StatefulWidget {
  const CallsView({super.key});

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomUserCallLink(),
              const SizedBox(height: 15),
              const Text(
                'Recent',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              //
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) =>
                    const CustomUserContactSingleCall(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatActionButton(
        icon: Icons.add_call,
        onPressed: () {},
      ),
    );
  }
}

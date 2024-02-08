import 'package:flutter/material.dart';
import 'package:watsappproject/views/common/widgets/custom_float_action_button.dart';

import 'widgets/custom_single_chat.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 15),
          itemCount: 100,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const CustomSingleChat();
          },
        ),
        floatingActionButton: CustomFloatActionButton(
          icon: Icons.chat,
          onPressed: () {},
        ),
      ),
    );
  }
}

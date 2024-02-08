import 'package:flutter/material.dart';
import 'package:watsappproject/utils/enums/single_user_chats_pop_ups.dart';

class SingleUserChatView extends StatelessWidget {
  const SingleUserChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: InkWell(
          enableFeedback: false,
          onTap: () => Navigator.pop(context),
          child: const Row(
            children: [
              Icon(Icons.arrow_back, color: Colors.white),
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/profile.png'),
              )
            ],
          ),
        ),
        title: const Text(
          'Username',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.add_call),
            splashRadius: 20,
            enableFeedback: false,
          ),
          PopupMenuButton<Chatspopup>(
            iconColor: Colors.white,
            enableFeedback: false,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: Chatspopup.viewContact,
                  child: Text('View contact'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.report,
                  child: Text('Report'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.block,
                  child: Text('Block'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.search,
                  child: Text('Search'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.mutenotifications,
                  child: Text('Mute notifications'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.disappearingmessages,
                  child: Text('Disappearing messages'),
                ),
                const PopupMenuItem(
                  value: Chatspopup.wallpaper,
                  child: Text('Wallpaper'),
                ),
                PopupMenuItem(
                  value: Chatspopup.more,
                  onTap: () {},
                  child: InkWell(
                    enableFeedback: false,
                    onTap: () {
                      //this is not working yet
                      PopupMenuButton<Chatspopup>(
                        itemBuilder: (context) {
                          return [
                            const PopupMenuItem(
                              value: Chatspopup.medialinksanddocs,
                              child: Text('Media, links, and docs'),
                            ),
                            const PopupMenuItem(
                              value: Chatspopup.clearChats,
                              child: Text('Clear chat'),
                            ),
                            const PopupMenuItem(
                              value: Chatspopup.exportChats,
                              child: Text('Export chat'),
                            ),
                            const PopupMenuItem(
                              value: Chatspopup.addShortCuts,
                              child: Text('Add shortcut'),
                            ),
                          ];
                        },
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('More'),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}

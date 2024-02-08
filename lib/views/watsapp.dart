import 'package:flutter/material.dart';
import 'package:watsappproject/utils/enums/watsapp_home_pop_ups.dart';
import 'package:watsappproject/views/calls/calls_view.dart';
import 'package:watsappproject/views/chat/chats_view.dart';
import 'package:watsappproject/views/community/community_view.dart';
import 'package:watsappproject/views/updates/updates_view.dart';

class Watsapp extends StatelessWidget {
  const Watsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            //sliverAppbar
            SliverAppBar(
              title: const Text(
                'WhatsApp',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              actions: [
                IconButton(
                  color: Colors.white,
                  splashRadius: 20,
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_camera_outlined,
                    size: 25,
                  ),
                ),
                IconButton(
                  color: Colors.white,
                  splashRadius: 20,
                  enableFeedback: false,
                  onPressed: () {
                    //the search functionality will be implemented
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                PopupMenuButton<WatsappPopUp>(
                  iconColor: Colors.white,
                  enableFeedback: false,
                  splashRadius: 20,
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: WatsappPopUp.newGroup,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.newBroadcast,
                        child: Text('New Broadcast'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.linkedDevices,
                        child: Text('Linked Devices'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.starredMessages,
                        child: Text('Starred Messages'),
                      ),
                      PopupMenuItem(
                        value: WatsappPopUp.settings,
                        child: Text('Settings'),
                      ),
                    ];
                  },
                ),
              ],
              backgroundColor: Colors.teal,
              expandedHeight: 150,
              pinned: true,
              floating: true,
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.grey.shade100,
                enableFeedback: false,
                unselectedLabelStyle: TextStyle(color: Colors.grey[300]),
                tabs: [
                  //community tab
                  Tab(
                    icon: Icon(
                      Icons.groups,
                      color: Colors.grey.shade100,
                    ),
                  ),

                  //ChatsTab
                  const Tab(
                    text: 'Chats',
                  ),

                  //Status Tab
                  const Tab(
                    text: 'Updates',
                  ),

                  //Calls tab
                  const Tab(
                    text: 'Calls',
                  )
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              CommunityView(),
              ChatsView(),
              UpdatesView(),
              CallsView(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:basics/data/notifiers.dart';
import 'package:basics/views/Widgets/navbar_widget.dart';
import 'package:basics/views/pages/home_page.dart';
import 'package:basics/views/pages/profile_page.dart';
import 'package:basics/views/pages/setting_page.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: [
          IconButton(
            onPressed: () {
              isLightModeNotifier.value = !isLightModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isLightModeNotifier,
              builder: (BuildContext context, dynamic value, Widget? child) {
                return Icon(value ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: 'Setting Page');
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, dynamic selectedPage, Widget? child) {
          return pages.elementAt(selectedPageNotifier.value);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}

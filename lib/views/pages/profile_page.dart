import 'package:basics/data/notifiers.dart';
import 'package:basics/views/pages/welcom_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitchChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Profile page'),
            Divider(),
            ListTile(
              title: Text('logout'),
              textColor: Colors.red,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      actionsAlignment: MainAxisAlignment.spaceBetween,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Logout'), Icon(Icons.output)],
                      ),
                      content: Text('Are you sure you want to logout?'),

                      actions: [
                        FilledButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            foregroundColor: Colors.white70,
                          ),
                          onPressed: () {
                            selectedPageNotifier.value = 0;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomPage(),
                              ),
                            );
                          },
                          child: Icon(Icons.output),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

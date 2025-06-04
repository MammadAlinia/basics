import 'package:basics/views/pages/welcom_page.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});
  final String title;
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();

  bool? isChecked = false;
  bool isSwitchChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                tristate: true,
                title: Text('Click me'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch(
                value: isSwitchChecked,
                onChanged: (value) => setState(() {
                  isSwitchChecked = value;
                }),
              ),
              SwitchListTile(
                title: Text('Switch Me'),
                value: isSwitchChecked,
                onChanged: (value) => setState(() {
                  isSwitchChecked = value;
                }),
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () => print('image tap'),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  color: Colors.white12,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbW90loB18st9jfgvCBcQ2y8DvEkf6b6AiLw&s',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('wassup baby'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('click'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: Text('Cancel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

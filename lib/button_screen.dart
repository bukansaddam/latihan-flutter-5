import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  String _selectedValue = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 5),
                    action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    content: const Text('Text Button Clicked'),
                  ),
                );
              },
              child: const Text(
                'Click Me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Elevated Button Clicked'),
                        content: const Text('This is an alert dialog'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      );
                    });
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Outlined Button Clicked'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Option 1'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Option 2'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Option 3'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            DropdownButton<String>(
              value: _selectedValue,
              items: const [
                DropdownMenuItem(
                  value: 'Item 1',
                  child: Text('Item 1'),
                ),
                DropdownMenuItem(
                  value: 'Item 2',
                  child: Text('Item 2'),
                ),
                DropdownMenuItem(
                  value: 'Item 3',
                  child: Text('Item 3'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: CupertinoContextMenu(
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    child: const Text('Action 1'),
                    onPressed: () {},
                  ),
                  CupertinoContextMenuAction(
                    child: const Text('Action 2'),
                    onPressed: () {},
                  ),
                  CupertinoContextMenuAction(
                    child: const Text('Action 3'),
                    onPressed: () {},
                  ),
                ],
                child: Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

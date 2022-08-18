import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        //disable default back icon
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            //back to context and delete page
            Navigator.of(context).pop();
          },
          //choose Icon that you like
          icon: const Icon(Icons.arrow_back_ios),
        ),
        //add more Icon on AppBar
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('umbrella Button');
            },
            icon: const Icon(Icons.umbrella_outlined),
          ),
          IconButton(
            onPressed: () {
              debugPrint('deck Button');
            },
            icon: const Icon(Icons.deck),
          ),
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/seahorse.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget with center',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //if isSwitch? mean if isSwitch true then put Color.green
                //and otherwise : mean if isSwitch false then put Color.blue
                //primary: isSwitch ? Colors.green : Colors.blue,
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  //primary: isCheckbox ? Colors.blue : Colors.green,
                  ),
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('TextButton Button');
              },
              child: const Text('TextButton Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                  },
                );
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(
                  () {
                    isCheckbox = newBool;
                  },
                );
              },
            ),
            Image.network(
                'https://www.thoughtco.com/thmb/t8AnhGOqEJEaehpyjAL3yGafxnA=/3439x2579/smart/filters:no_upscale()/GettyImages_482194715-56a1329e5f9b58b7d0bcf666.jpg'),
          ],
        ),
      ),
    );
  }
}

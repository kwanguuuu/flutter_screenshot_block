import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenshot_block/screenshot_block.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _screenshotStatus = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),

        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[

                Text("screenshot_block status: "+ _screenshotStatus),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: MaterialButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Enable'),
                        onPressed: () async {
                          setState(() {
                            _screenshotStatus = 'Enabled';
                            ScreenshotBlock.enableScreenshot();
                          });
                        },
                      )
                    ),
                    MaterialButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('Disable'),
                      onPressed: () async {
                        setState(() {
                        _screenshotStatus = 'Disabled';
                        ScreenshotBlock.disableScreenshot();
                        });
                      },
                    ),
                  ],
                ),
              ],
            )
        ),

      );
  }
}

import 'package:flutter/material.dart';
import 'package:no_screenshot/no_screenshot.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver{

  AppLifecycleState? _notification;
  final _noScreenshot = NoScreenshot.instance;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      print("_noScreenshot resumed");
      setState(() {
        _noScreenshot.screenshotOn();
      });
    }if(state == AppLifecycleState.inactive){
      print("_noScreenshot inactive");
      setState(() {
        _noScreenshot.screenshotOn();
      });
    }
    if(state == AppLifecycleState.paused){
      print("_noScreenshot paused");
      setState(() {
        _noScreenshot.screenshotOn();
      });
    }
    if(state == AppLifecycleState.detached){
      print("_noScreenshot detached");
      setState(() {
        _noScreenshot.screenshotOn();
      });
    }
  }


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ElevatedButton(onPressed: () {}, child: Text('data'))],
      ),
    );
  }
}

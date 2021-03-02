import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inspirit view'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UnityViewPage()));
          },
          child: Text('Launch Skeletal System Level'),
        ),
      ),
    );
  }
}

class UnityViewPage extends StatefulWidget {
  @override
  _UnityViewPageState createState() => _UnityViewPageState();
}

class _UnityViewPageState extends State<UnityViewPage> {
  UnityViewController unityViewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unity View'),
      ),
      body: UnityView(
        onCreated: onUnityViewCreated,
        onReattached: onUnityViewReattached,
        onMessage: onUnityViewMessage,
      ),
    );
  }

  void onUnityViewCreated(UnityViewController controller) {
    print('onUnityViewCreated');
    unityViewController = controller;

    // controller.send(
    //   'UnityController',
    //   'LoadAssetBundleFromURL',
    //   'https://inspirit-learning.s3.ap-south-1.amazonaws.com/AssetBundles/Mac/biology/skeleton',
    // );

    controller.send(
      'UnityController',
      'SetAssetName',
      'Skeleton',
    );
    controller.send(
      'UnityController',
      'LoadAssetBundleFromURL',
      'https://inspirit-learning.s3.ap-south-1.amazonaws.com/AssetBundles/Mac/biology/skeleton',
    );

    print('sent message');
  }

  void onUnityViewReattached(UnityViewController controller) {
    print('onUnityViewReattached');
  }

  void onUnityViewMessage(UnityViewController controller, String message) {
    print('onUnityViewMessage');
    print(message);
    //if(message.e)
  }
}

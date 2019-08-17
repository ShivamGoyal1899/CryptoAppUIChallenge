import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';
import 'ProfileScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Quicksand"),
      color: Color(0xFF212B4B),
      debugShowCheckedModeBanner: false,
      title: "Crypto",
      home: MyHomePage(title: "Crypto"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();

  Future<void> _authorizeNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      if (isAuthorized) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212B4B),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF212B4B),
        title: Text(widget.title),
        centerTitle: true,
        leading: Icon(Icons.arrow_downward),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: _authorizeNow,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xFF212B4B), Colors.blueAccent, Color(0xFF212B4B)],
              stops: [0.5, 0.5, 0.65],
              center: Alignment(0.0, 0.0),
            ),
          ),
          child: Image.asset(
            "assets/images/ic_touch.png",
            scale: 5.0,
          ),
        ),
      ),
    );
  }
}

import 'package:basic_demo/data/user_provider.dart';
import 'package:basic_demo/models/user_model.dart';
import 'package:flutter/material.dart';

class LoginPageDemo extends StatefulWidget {
  @override
  _LoginPageDemoState createState() => _LoginPageDemoState();
}

class _LoginPageDemoState extends State<LoginPageDemo> {
  // get username and password from form input
  String _username, _password;

  // a marker to status of loading
  bool _isLoaded = false;

  // using formKey to validate and save the input
  final formKey = GlobalKey<FormState>();
  // using sacffoldKey to show a snakbar
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Widget loginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Sqflite App Login',
          style: Theme.of(context).textTheme.headline,
        ),
        Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Username'),
                  onSaved: (value) => _username = value,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  onSaved: (value) => _password = value,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('LoginPageDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: loginForm(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: _submit,
      ),
    );
  }

  void _submit() async {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoaded = true;
      });
      form.save();
      var user = User(username: _username, password: _password);
      onLoginSuccess(user);
    } else {
      var error = "Login Error";
      onLoginError(error);
    }
  }

  void onLoginSuccess(User user) async {
    _showSnackBar(user.toString());
    setState(() {
      _isLoaded = false;
    });
    var db = UserProvider();
    await db.insertUser(user);
    Navigator.of(context).pushNamed('/');
  }

  void onLoginError(String error) {
    _showSnackBar(error);
    setState(() {
      _isLoaded = false;
    });
    Navigator.of(context).pushNamed('/');
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(
        text,
        style: Theme.of(context).textTheme.headline,
      ),
    ));
  }
}

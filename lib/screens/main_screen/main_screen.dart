import 'package:authwithrest/bloc/auth_bloc/auth.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:authwithrest/style/theme.dart' as Style;

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
      backgroundImage: NetworkImage(
        "https://yt3.ggpht.com/yti/ANoDKi5R5eJSjZigdWmIcZKFAtqwG4svMcAAN0Iyvw4j=s108-c-k-c0x00ffffff-no-rj"
      ),
    ),
              ),
        title: Text("AUTH WITH REST"),
        actions: [
          IconButton(icon: Icon(EvaIcons.logOutOutline), onPressed: () {
            BlocProvider.of<AuthenticationBloc>(context).add(
                          LoggedOut(),
                        );
          })
        ],
      ),
      body: Center(
        child: Text("Main Screen"),
      )
    );
  }
}
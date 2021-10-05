import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/call_widgets.dart';
import 'package:whatsapp_clone/widgets/camera_widgets.dart';
import 'package:whatsapp_clone/widgets/chats_widgets.dart';
import 'package:whatsapp_clone/widgets/status_widgets.dart';

void main(List<String> args) {
  runApp(MyApp());
}

late TabController _tabController;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Color(0xFF121B22),
            primaryColor: Color(0xFF1F2C34),
            appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1F2C34))),
        title: 'WhatsApp Clone',
        home: DefaultTabController(
          child: MainPage(),
          initialIndex: 1,
          length: 4,
        ));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'Whatsapp Clone',
            style: TextStyle(color: Color(0xFF8596A0)),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          actionsIconTheme: IconThemeData(color: Color(0xFF8596A0)),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Color(0xFF00A884),
            indicatorColor: Color(0xFF00A884),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                child: Text(
                  'CHATS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'STATUS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'CALLS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
            children: [CameraPage(), ChatsPage(), StatusPage(), CallsPage()]));
  }
}

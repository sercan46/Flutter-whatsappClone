import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp_clone/helpers/chat_list.dart';
import 'package:whatsapp_clone/helpers/status_list.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Stack(children: [
                  ClipOval(
                    child: Image.network(
                      'https://www.sercanozbek.com/assests/img/benkim.jpg',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF00A884),
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(Icons.add, color: Colors.white)))
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My status',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Tap to add status update',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Viewd updates',
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: ListView.builder(
              itemCount: statusList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    title: Text('${statusList[index]['name']}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              width: 1.5, color: const Color(0xFF9E9E9E))),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          statusList[index]['image'].toString(),
                          height: 150,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      '${statusList[index]['lastSeen']}',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                );
              }),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: FloatingActionButton(
                            backgroundColor: Color(0xFF1F2C34),
                            onPressed: () {},
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.create_rounded,
                                    color: Colors.white))),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 55,
                      height: 55,
                      child: FloatingActionButton(
                          backgroundColor: Color(0xFF00A884),
                          onPressed: () {},
                          child: IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.camera_alt, color: Colors.white))),
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}

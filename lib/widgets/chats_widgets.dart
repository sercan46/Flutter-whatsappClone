import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helpers/chat_list.dart';
import 'package:whatsapp_clone/widgets/chat_wigets.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.archive_outlined,
                      size: 30,
                      color: Colors.grey[500],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Archived',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                ],
              ),
            )),
        Expanded(
            flex: 15,
            child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatPage(
                                  imageProfile:
                                      chatList[index]['image'].toString(),
                                  name: chatList[index]['name'].toString())),
                        );
                      },
                      title: Text('${chatList[index]['name']}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      leading: ClipOval(
                        child: Image.network(
                          chatList[index]['image'].toString(),
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      subtitle: Text(
                        '${chatList[index]['lastMessage']}',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('${chatList[index]['lastSeen']}',
                                style: TextStyle(color: Colors.grey[500])),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
        Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                    backgroundColor: Color(0xFF00A884),
                    onPressed: () {},
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.message, color: Colors.white)))))
      ],
    );
  }
}

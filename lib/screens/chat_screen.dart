import 'package:flutter/material.dart';

class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  List<Message> messages = [];

  @override
  void initState() {
    super.initState();
    // Initialize with a virtual conversation
    messages = [
      Message(text: "Hello!", isMe: false),
      Message(text: "Hi there!", isMe: true),
      Message(text: "How are you?", isMe: false),
      Message(text: "I'm good, thanks!", isMe: true),
      // Add more virtual conversation messages as needed
    ];
  }

  void _handleSubmitted(String text) {
    if (text.isNotEmpty) {
      setState(() {
        messages.add(Message(text: text, isMe: true));
        _textController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent.shade400,leading: Row(
        children: [Container(child: Icon(Icons.arrow_back)),
          CircleAvatar(radius: 22,backgroundImage: NetworkImage(
          'https://images.pexels.com/photos/6675925/pexels-photo-6675925.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load'
          ),
          
          ),
        ],
      ),
        title: Container(margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Programmer",style: TextStyle(fontSize: 20,color: Colors.black),),
            Text("online",style: TextStyle(fontSize: 15,color: Colors.black),)],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (_, int index) => ChatMessage(
                  message: messages[index],
                ),
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).cardColor),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration.collapsed(
                  hintText: 'Send a message',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final Message message;

  ChatMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle textStyle = theme.textTheme.subtitle1!;
    final BorderRadiusGeometry borderRadiusGeometry =
        BorderRadius.circular(8.0);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment:
            message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 16.0),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: message.isMe
                  ? Colors.greenAccent[100]
                  : Colors.grey[300],
              borderRadius: borderRadiusGeometry,
            ),
            child: Text(
              message.text,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}

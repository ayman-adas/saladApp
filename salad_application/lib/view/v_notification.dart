// part of './../import/import.dart';

// /// Listens for incoming foreground messages and displays them in a list.
// class VNotification extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _VNotification();
// }

// class _VNotification extends State<VNotification> {
//   List<RemoteMessage> _messages = [];

//   @override
//   void initState() {
//     super.initState();
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       setState(() {
//         _messages = [..._messages, message];
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_messages.isEmpty) {
//       return const Text('No messages received');
//     }

//     return ListView.builder(
//         shrinkWrap: true,
//         itemCount: _messages.length,
//         itemBuilder: (context, index) {
//           RemoteMessage message = _messages[index];

//           return ListTile(
//             title: Text(
//                 message.messageId ?? 'no RemoteMessage.messageId available'),
//             subtitle:
//                 Text(message.sentTime?.toString() ?? DateTime.now().toString()),
            
//           );
//         });
//   }
// }

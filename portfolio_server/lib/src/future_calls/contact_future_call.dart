import 'package:serverpod/serverpod.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import '../generated/contacts.dart';

// Future calls are calls that will be invoked at a later time. An example is if
// you want to send a drip-email campaign after a user signs up. You can
// schedule a future call for a day, a week, or a month. The calls are stored in
// the database, so they will persist even if the server is restarted.
//
//  To add a future call to your server, you need to register it in the
//  `server.dart` file. Schedule the call using the
//  `session.serverpod.futureCallWithDelay` or `session.serverpod.futureCallAtTime`
//  methods. You can optionally pass a serializable object together with the
//  call.

class ContactFutureCall extends FutureCall<Contacts> {
  @override
  Future<void> invoke(Session session, Contacts? data) async {
    try {
      // String username = 'oyusflutterdev@gmail.com';
      // String password = "";
      // final smtpServer = gmail(username, password);
      // final equivalentMessage = Message()
      //   ..from = Address(username, 'Your name 😀')
      //   ..recipients
      //       .add(Address(data?.email ?? "ayushkumarsingh0708@gmail.com"))
      //   ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
      //   ..text = ' This is the plain text.\nThis is line 2 of the text part.'
      //   ..html =
      //       '<h1>Dear${data?.name}</h1>\n<p>Hey! Here is some HTML content</p>/>';
      // var connection = PersistentConnection(smtpServer);

      // await connection.send(equivalentMessage);
      // await connection.close();
    } catch (e) {
      session.log(e.toString());
    }
    // close the connection
  }
}

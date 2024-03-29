import 'package:portfolio_server/src/generated/contacts.dart';
import 'package:serverpod/serverpod.dart';

class ContactUsEndpoint extends Endpoint {
  Future<bool> sendContactdetails(Session session, Contacts contactData) async {
    try {
      await Contacts.db.insertRow(session, contactData);
      session.server.serverpod
          .futureCallWithDelay('mail', contactData, Duration(seconds: 3));
      return true;
    } catch (e) {
      return false;
    }
  }
}

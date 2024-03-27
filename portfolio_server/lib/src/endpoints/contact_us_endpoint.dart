import 'package:portfolio_server/src/generated/contacts.dart';
import 'package:serverpod/serverpod.dart';

class ContactUsEndpoint extends Endpoint {
  Future<bool> sendContactdetails(Session session, Contacts contactData) async {
    try {
      await Contacts.db.insertRow(session, contactData);
      return true;
    } catch (e) {
      return false;
    }
  }
}

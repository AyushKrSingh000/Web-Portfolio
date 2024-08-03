import 'package:url_launcher/url_launcher.dart';

openUrl(String url) async {
  if (url.isEmpty) return;
  final uri = Uri.parse(url);
  try {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  } catch (e) {
    return;
  }
}

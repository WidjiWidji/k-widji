import 'package:url_launcher/url_launcher.dart';

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

final Uri emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'karsten.widjanarko@gmail.com',
  query:
      encodeQueryParameters(<String, String>{'subject': 'WidjiWidji Email 🤖'}),
);

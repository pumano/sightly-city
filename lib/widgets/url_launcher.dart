import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  launchURL(String param) async {
    print(param);
    if (await canLaunch(param)) {
      await launch(param);
    } else {
      throw 'Could not launch $param';
    }
  }
}

import 'package:url_launcher/url_launcher.dart';

class Func{
static    openLink({
    String? link
  }){
    final Uri url=Uri.parse(link.toString());
    launchUrl(url,mode: LaunchMode.externalApplication);
  }
}
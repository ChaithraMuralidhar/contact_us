import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  _makingPhoneCall() async {
    var url = Uri.parse("tel:1234567890");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendingMails() async {
    var url = Uri.parse("mailto:abc@gmail.com");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendingSMS() async {
    var url = Uri.parse("sms:1234567890");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _makingPhoneCall,
                child: Text('Call Us'),
              ),
              ElevatedButton(
                onPressed: _sendingMails,
                child: Text('Send Email'),
              ),
              ElevatedButton(
                onPressed: _sendingSMS,
                child: Text('Send SMS'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

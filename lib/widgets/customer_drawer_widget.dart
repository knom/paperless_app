import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paperless_app/i18n.dart';
import 'package:paperless_app/routes/about_route.dart';
import 'package:paperless_app/routes/documents_route.dart';
import 'package:paperless_app/routes/settings_route.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawerWidget extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture:
                  SvgPicture.asset("assets/logo.svg", color: Colors.white),
              accountName: Text('192.168.0.10'),
              accountEmail: Text("max@knor.net")),
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //   ),
          //   child: Text('Paperless'),
          // ),
          ListTile(
            title: Text("Documents".i18n),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DocumentsRoute()),
              );
            },
          ),
          ListTile(
            title: Text('Settings'.i18n),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsRoute()),
              );
            },
          ),
          ListTile(
            title: Text('Help'.i18n),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              launchUrl(Uri.parse(
                  "https://github.com/bauerj/paperless_app/wiki/Help"));
            },
          ),
          ListTile(
            title: Text('About'.i18n),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutRoute()),
              );
            },
          ),
        ],
      ),
    );
  }
}

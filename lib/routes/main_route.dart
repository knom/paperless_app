import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:paperless_app/routes/about_route.dart';
import 'package:paperless_app/routes/documents_route.dart';
import 'package:paperless_app/routes/home_route.dart';
import 'package:paperless_app/routes/settings_route.dart';
import 'package:paperless_app/widgets/customer_drawer_widget.dart';

import '../api.dart';

class MainRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Paperless")),
      body: DocumentsRoute(),
      drawer: CustomDrawerWidget(),
    );
  }

  void loadData() async {}

  @override
  void initState() {
    loadData();
    super.initState();
  }
}

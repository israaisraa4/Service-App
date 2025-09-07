import 'package:flutter/material.dart';

import 'package:task3_ui/helpers/constants.dart';
import 'package:task3_ui/helpers/roues.dart';
import 'package:task3_ui/widgets/service_widget.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  ServicesScreen({Key? key}) : super(key: key);

  // widget(widget) ,, count

  @override
  Widget build(BuildContext context) {
    List<String> servicesName =
        ModalRoute.of(context)?.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
        actions: [
          InkWell(
            onTap: () =>
                //  Navigator.popUntil(context, (route) => route.isFirst),
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.splash,
                  // MaterialPageRoute(builder: (context) => SplashScreen()),
                  (route) => false,
                ),
            child: Icon(Icons.logout, color: AppConstants.primaryColor),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider();
        },

        shrinkWrap: true,
        itemCount: servicesName.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ServiceWidget(
              icon: 'elec.png',
              title: servicesName[index],
              description: 'lorem',
            ),
          );
        },
      ),
    );
  }
}
/*
Navigator
push , pop , pushReplacment , popUntil , pushAndRemoveUntil


Navigator 1.0 
Navigator 2.0
Recommended routing
*/
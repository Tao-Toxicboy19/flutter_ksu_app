import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_ksu/themes/colors.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webChild;
  final Widget mobileChild;

  const ResponsiveLayout(
      {Key? key, required this.webChild, required this.mobileChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryDark, primary],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  //Using for reponsive layout
                  child: LayoutBuilder(builder: (
                    BuildContext context,
                    BoxConstraints constraints,
                  ) {
                    //print(constraints.maxWidth);
                    Widget childWidget = mobileChild;
                    if (constraints.maxWidth > 800) {
                      childWidget = webChild;
                    }
                    return childWidget;
                  }
                ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

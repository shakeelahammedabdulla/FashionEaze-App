


import 'package:flutter/material.dart';
import 'package:testapp/core/utils/size_utils.dart';
import 'package:testapp/theme/theme_helper.dart';

class CatalogThreeScreen extends StatefulWidget {
  const CatalogThreeScreen({Key? key}) : super(key: key);

  @override
  _CatalogThreeScreenState createState() => _CatalogThreeScreenState();
}

class _CatalogThreeScreenState extends State<CatalogThreeScreen> {
  @override
  void initState() {
    super.initState();
    // Show the logout confirmation dialog after the frame is painted
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Logout",
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 18.v),
                Text(
                  "Are you sure you want to logout?",
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer,
                    fontSize: 14.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 36.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Logic for Yes button
                        Navigator.pop(context, true);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 20, 34),
                        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                      ),
                      child: Text(
                        "Yes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.fSize, // Adjusted font size
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Logic for No button
                        Navigator.pop(context, false);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 3, 27),
                        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                      ),
                      child: Text(
                        "No",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.fSize, // Adjusted font size
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80.v),
                _buildFortyNine(context),
              ],
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget _buildFortyNine(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

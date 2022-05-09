import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kossearch/widgets/profile/about.dart';
import 'package:kossearch/widgets/profile/account.dart';
import 'package:kossearch/widgets/profile/privacy.dart';



class ProfileItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              // user card
              // SimpleUserCard(
              //
              //   userName: "Cocogoat",
              //   userProfilePic: AssetImage("assets/images/Ganyu.png"),
              //   //icon: Icon(CupertinoIcons.pencil, color: Colors.green, size: 20),
              // ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountItem()));
                    },
                    icons: CupertinoIcons.profile_circled,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.cyanAccent,
                    ),
                    title: 'Account',
                    subtitle: "Yours account",
                  ),
                  SettingsItem(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyItem()));
                    },
                    icons: Icons.fingerprint,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Privacy',
                    subtitle: "Lock Cozy to improve your privacy",
                  ),
                  SettingsItem(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyItem()));
                    },
                    icons: Icons.dark_mode_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Dark mode',
                    subtitle: "Automatic",
                    trailing: Switch.adaptive(
                      value: false,
                      onChanged: (value) {

                      },
                    ),
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutItem()));
                    },
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: 'About',
                    subtitle: "Learn more about Cozy",
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Account",
                items: [
                  // SettingsItem(
                  //   onTap: () {},
                  //   icons: Icons.exit_to_app_rounded,
                  //   title: "Sign Out",
                  // ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.repeat,
                    title: "Change email",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.delete_solid,
                    title: "Delete account",
                    titleStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:first_ui/custom_widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstUi extends StatefulWidget {

   const FirstUi({Key? key}) : super(key: key);

  @override
  State<FirstUi> createState() => _FirstUiState();
}

class _FirstUiState extends State<FirstUi> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          ListTileCustom(icon: const Icon(Icons.share_outlined), titletext: "Share Dukaan App",trailingthing: const Icon(Icons.arrow_forward_ios,size: 18,), left: 19,),
          ListTileCustom(icon:const  Icon(Icons.messenger_outline), titletext: "Change Language",trailingthing:const Icon(Icons.arrow_forward_ios,size: 18,),left: 19,),
          ListTile(iconColor: Colors.grey[700], dense: true, title:const  Text("Whatsapp Chat Support",style: TextStyle(fontSize: 16,)), horizontalTitleGap: 2,
            trailing: Switch(value: isSwitch,activeTrackColor: Colors.blue[100],activeColor: Colors.blue[900] ,onChanged: (val){setState(() {
              isSwitch = val;
            });}), contentPadding: const EdgeInsets.fromLTRB(19, 0, 7, 0), leading:const  FaIcon(FontAwesomeIcons.whatsapp),),
         ListTileCustom(icon: const Icon(Icons.lock_outlined,size: 27,),left: 16,gap: 5, titletext: "Privacy Policy"),
          ListTileCustom(icon: const Icon(Icons.star_border,size: 29,), titletext: "Rate Us", left: 15,gap: 7,),
          ListTileCustom(icon:const  Icon(Icons.logout), titletext: "Sign Out", left: 19),
          const SizedBox(height: 370,),
          const  Center(child: Text("Version",style: TextStyle(color: Colors.grey),),),
          const SizedBox(height: 5,),
          const  Center(child: Text("2.4.2"),)
        ],
      ),
    );
  }
}

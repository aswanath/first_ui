import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:first_ui/custom_widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstUi extends StatefulWidget {

   FirstUi({Key? key}) : super(key: key);

  @override
  State<FirstUi> createState() => _FirstUiState();
}

class _FirstUiState extends State<FirstUi> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Column(
        children: [
          SizedBox(height: 10,),
          ListTileCustom(icon: Icon(Icons.share_outlined), titletext: "Share Dukaan App",trailingthing: Icon(Icons.arrow_forward_ios,size: 18,), left: 19,),
          ListTileCustom(icon: Icon(Icons.messenger_outline), titletext: "Change Language",trailingthing:Icon(Icons.arrow_forward_ios,size: 18,),left: 19,),
          // ListTileCustom(icon: FaIcon(FontAwesomeIcons.whatsapp), titletext: "WhatsApp Chat Support",
          //   trailingthing: Switch(value: isSwitch, activeTrackColor: Colors.blue[100],activeColor: Colors.blue[900],onChanged: (val){
          //     setState((){isSwitch = val;});
          //   }),),
          ListTile(iconColor: Colors.grey[700], dense: true, title: Text("Whatsapp Chat Support",style: TextStyle(fontSize: 16,)), horizontalTitleGap: 2,
            trailing: Switch(value: isSwitch,activeTrackColor: Colors.blue[100],activeColor: Colors.blue[900] ,onChanged: (val){setState(() {
              isSwitch = val;
            });}), contentPadding: EdgeInsets.fromLTRB(19, 0, 7, 0), leading: FaIcon(FontAwesomeIcons.whatsapp),),
         ListTileCustom(icon: Icon(Icons.lock_outlined,size: 27,),left: 16,gap: 5, titletext: "Privacy Policy"),
          ListTileCustom(icon: Icon(Icons.star_border,size: 29,), titletext: "Rate Us", left: 15,gap: 7,),
          ListTileCustom(icon: Icon(Icons.logout), titletext: "Sign Out", left: 19),
         SizedBox(height: 370,),
         Center(child: Text("Version",style: TextStyle(color: Colors.grey),),),
          SizedBox(height: 5,),
          Center(child: Text("2.4.2"),)
        ],
      ),
    );
  }
}

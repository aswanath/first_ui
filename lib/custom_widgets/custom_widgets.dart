


import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[900],
      centerTitle: true,
      elevation: 0,
      title: Text("Additional Information",style: TextStyle(),),
      leading: Icon(Icons.arrow_back_outlined,size: 30,),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class ListTileCustom extends StatelessWidget {
  final Widget icon;
  final String titletext;
  double left;
  double? gap;
  Widget? trailingthing;
   ListTileCustom({Key? key, this.trailingthing,this.gap,required this.icon, required this.titletext, required this.left}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor:  Colors.grey[700],
     dense: true,
      leading: icon,
      title: Text(titletext,style: TextStyle(fontSize: 16,)),
      contentPadding:EdgeInsets.fromLTRB(left, 0, 19, 0),
      horizontalTitleGap: gap??2,
      visualDensity: VisualDensity(vertical: .3),
      trailing: trailingthing,
    );
  }
}

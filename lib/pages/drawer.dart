import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Flutter谷歌翻译'),
              accountEmail: Text("986244073@qq.com"),
              currentAccountPicture: null,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/bg_account_switcher.png'))),
            ),
            ListTile(
              title: Text('首页',style: TextStyle(color: Colors.blue[600], ),),

              leading: Icon(Icons.home,color: Colors.blue[600],),
              onTap: () {},
            ),
            ListTile(
              title: Text('翻译收藏'),
              leading: Icon(Icons.stars,),
              onTap: () {},
            ),
            ListTile(
              title: Text('离线翻译'),
              leading: Icon(Icons.translate,),
              onTap: () {},
            ),
            ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings,),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

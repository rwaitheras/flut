import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                    ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland'
                  ,

                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/

//

        ],
      ),

    );



    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(

        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

//            _buildButtonColumn(color, Icons.call, 'AIRTIME') return <PopupMenuItem>[new PopupMenuItem(child: Text('Borrow Airtime'))];,
//    return <PopupMenuItem>[new PopupMenuItem(child: Text('Borrow Airtime'))];
    _buildButtonColumn(color, Icons.near_me, 'SHOPPING'),
    _buildButtonColumn(color, Icons.share, 'DEPOSIT'),
    _buildButtonColumn(color, Icons.share, 'BALANCE'),
    ],
    ),
    );

//    Container(
//    margin: EdgeInsets.symmetric(vertical: 10),
//    height: 20,
//    width: 20,
//    child: PopupMenuButton(
//    child: FlutterLogo(),
//    itemBuilder: (context) {
//    return <PopupMenuItem>[new PopupMenuItem(child: Text('Borrow Airtime'))];
//    },
//    ),
//    ),


    

    Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

    _buildButtonColumn(color, Icons.call, 'AIRTIMES'),
    _buildButtonColumn(color, Icons.near_me, 'SHOPPING'),
    _buildButtonColumn(color, Icons.share, 'DEPOSIT'),
    _buildButtonColumn(color, Icons.share, 'BALANCE'),



    ],
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    ),
    );


    return MaterialApp(
    title: 'Flutter layout demo',
      home: Scaffold(
      appBar: AppBar(
      title: Text('Flutter layout demo'),
    ),
    body: ListView(
    children: [
    titleSection,
    buttonSection,
    textSection,



    ],
    ),
    ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),

      ],
    );
  }
}
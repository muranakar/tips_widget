import 'package:flutter/material.dart';
import 'tips_widget_1.dart';
import 'tips_widget_2.dart';
import 'tips_widget_3.dart';
import 'tips_widget_4.dart';
import 'tips_widget_5.dart';
import 'tips_widget_6.dart';
import 'tips_widget_7.dart';
import 'tips_widget_8.dart';
import 'tips_widget_9.dart';
import 'tips_widget_10.dart';
import 'tips_widget_11.dart';
import 'tips_widget_12.dart';
import 'tips_widget_13.dart';
import 'tips_widget_14.dart';
import 'tips_widget_15.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tips Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TipsList(),
    );
  }
}

class TipsList extends StatelessWidget {
  const TipsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tipsWidgets = [
      {'title': 'AlertDialog Tip', 'widget': const TipsWidget1()},
      {'title': 'SnackBar Tip', 'widget': const TipsWidget2()},
      {'title': 'Tooltip Tip', 'widget': const TipsWidget3()},
      {'title': 'BottomSheet Tip', 'widget': const TipsWidget4()},
      {'title': 'Banner Tip', 'widget': const TipsWidget5()},
      {'title': 'Dialog Tip', 'widget': const TipsWidget6()},
      {'title': 'CupertinoAlertDialog Tip', 'widget': const TipsWidget7()},
      {'title': 'ExpansionTile Tip', 'widget': const TipsWidget8()},
      {'title': 'PopupMenuButton Tip', 'widget': const TipsWidget9()},
      {'title': 'DraggableScrollableSheet Tip', 'widget': const TipsWidget10()},
      {'title': 'SnackBar Tip 2', 'widget': const TipsWidget11()},
      {'title': 'BottomSheet Tip 2', 'widget': const TipsWidget12()},
      {'title': 'CupertinoActionSheet Tip', 'widget': const TipsWidget13()},
      {'title': 'AlertDialog Tip 2', 'widget': const TipsWidget14()},
      {'title': 'Tooltip Tip 2', 'widget': const TipsWidget15()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Tips Widgets List')),
      body: ListView.builder(
        itemCount: tipsWidgets.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tipsWidgets[index]['title']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => tipsWidgets[index]['widget'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

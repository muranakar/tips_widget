import 'package:flutter/material.dart';
import 'package:tips_widget/tip_animated.dart';
import 'package:tips_widget/tip_fade.dart';
import 'tip_snackbar.dart';
import 'tip_tooltip.dart';
import 'tip_bottomsheet.dart';
import 'tip_banner.dart';
import 'tip_expansiontile.dart';
import 'tip_popupmenu.dart';
import 'tip_draggable.dart';

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
      {'title': 'SnackBar Tip', 'widget': const TipSnackbar()},
      {'title': 'Tooltip Tip', 'widget': const TipTooltip()},
      {'title': 'BottomSheet Tip', 'widget': const TipBottomSheet()},
      {'title': 'Banner Tip', 'widget': const TipBanner()},
      {'title': 'ExpansionTile Tip', 'widget': const TipExpansionTile()},
      {'title': 'PopupMenuButton Tip', 'widget': const TipPopupMenu()},
      {'title': 'DraggableScrollableSheet Tip', 'widget': const TipDraggable()},
      {'title': 'Animated Tip', 'widget': const TipAnimated()},
      {'title': 'Fade Tip', 'widget': const TipFade()},
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

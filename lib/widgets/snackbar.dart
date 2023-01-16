import 'package:flutter/material.dart';

class ButtonSection2 extends StatelessWidget {
  const ButtonSection2({super.key});

  void showSnackBar1(BuildContext context) {
    final snackBar1 = SnackBar(content: Text("Call"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar1);
  }

  void showSnackBar2(BuildContext context) {
    final snackBar = SnackBar(content: Text("Route"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showSnackBar3(BuildContext context) {
    final snackBar = SnackBar(content: Text("Share"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    // ···
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // // _buildButtonColumn(color, Icons.call, 'CALL'),
        // _buildButtonColumn(color, Icons.call, 'CALL'),
        // _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        // _buildButtonColumn(color, Icons.share, 'SHARE'),

        // IconButton(
        //   onPressed: () {
        //     showSnackBar(context);
        //   },
        //   color: color,
        //   icon: Icon(Icons.call),
        // ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                showSnackBar1(context);
              },
              icon: Icon(Icons.call),
              color: color,
            ),
            Container(
              child: Text(
                "CALL",
                style: TextStyle(color: color),
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                showSnackBar2(context);
              },
              icon: Icon(Icons.near_me),
              color: color,
            ),
            Container(
              child: Text(
                "ROUTE",
                style: TextStyle(color: color),
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                showSnackBar3(context);
              },
              icon: Icon(Icons.share),
              color: color,
            ),
            Container(
              child: Text(
                "SHARE",
                style: TextStyle(color: color),
              ),
            )
          ],
        ),
      ],
    );
  }

//   Column _buildButtonColumn(Color color, IconData icon, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//             onPressed: () {
//               // showSnackBar1(context);
//             },
//             icon: (Icon(
//               icon,
//               color: color,
//             ))),
//         // Icon(icon, color: color),
//         Container(
//           margin: const EdgeInsets.only(top: 20),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
}


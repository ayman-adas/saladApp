// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

int counter = 0;

class WPacketElement extends StatelessWidget {
  const WPacketElement(
      {super.key,
      required this.url,
      required this.data,
      required this.sailAll,
      required this.counter});

  final String url;
  final String data;
  final int sailAll;
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.transparent)),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                url,
              ),
              width: 100,
              height: 100,
            ),
          ),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  data,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.money_outlined),
                  Text("${sailAll}JD"),
                ],
              ),
              Text(" count:$counter")
            ]),
          ),
        ]),
        Container(
          height: 20,
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// int counter = 0;

// class WPacketElement extends StatelessWidget {
//   const WPacketElement(
//       {super.key,
//       required this.url,
//       required this.data,
//       required this.sailAll,
//       required this.count});

//   final String url;
//   final String data;
//   final int sailAll;
//   final int count;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 130,
//         color: Colors.transparent,
//         margin: const EdgeInsets.all(5),
//         child: Row(children: [
//           Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   border: Border.all(color: Colors.black)),
//               child: Expanded(child: Image.network(url))),
//           const SizedBox(width: 5),
//           Expanded(
//               flex: 2,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text(
//                     data,
//                     style: GoogleFonts.abel(color: Colors.grey, fontSize: 16),
//                   ),
//                   const Row(
//                     children: [
//                       Icon(Icons.money_outlined, color: Colors.grey),
//                       SizedBox(width: 4),
//                     ],
//                   ),
//                   Text(
//                     sailAll.toString(),
//                     style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   Text(count.toString()),
//                 ],
//               )),
//         ]));
//   }
// // }
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class WPacketElement extends StatelessWidget {
//   const WPacketElement(
//       {super.key,
//       required this.url,
//       required this.data,
//       required this.sailAll,
//       required this.count});

//   final String url;
//   final String data;
//   final int sailAll;
//   final int count;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.transparent,
//         margin: const EdgeInsets.all(5),
//         child: Row(
//           children: [
//             Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 border: Border.all(color: Colors.black),
//               ),
//               child: Image.network(url),
//             ),
//             const SizedBox(width: 5),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   data,
//                   style: GoogleFonts.abel(color: Colors.grey, fontSize: 16),
//                 ),
//                 const Row(
//                   children: [
//                     Icon(Icons.money_outlined, color: Colors.grey),
//                     SizedBox(width: 4),
//                     // Add your child widgets here if needed
//                   ],
//                 ),
//                 Text(
//                   sailAll.toString(),
//                   style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Text(count.toString()),
//               ],
//             ),
//           ],
//         ));
//   }
// }

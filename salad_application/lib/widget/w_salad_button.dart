import 'package:flutter/material.dart';
import 'package:fruit_salad/view/v_quantity.dart';
import 'package:google_fonts/google_fonts.dart';

int counter = 0;

class WSaladButton extends StatelessWidget {
  const WSaladButton(
      {super.key, required this.url, required this.data, required this.sail});

  final String url;
  final String data;
  final int sail;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          height: 130,
          color: Colors.transparent,
          margin: const EdgeInsets.all(5),
          child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return VQuantity(
                    data: data,
                    url: url,
                    sail: sail,
                  );
                }));
              },
              child: Expanded(
                child: Row(children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      child: Expanded(
                        flex: 2,
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            url,
                          ),
                          width: 100,
                          height: 100,
                        ),
                      )),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          data,
                          style: GoogleFonts.abel(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28.0),
                        child: Row(children: [
                          const Icon(Icons.money_outlined, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text(
                            "${sail}JD",
                            style: GoogleFonts.abel(fontSize: 16),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ]),
                      )
                    ],
                  )
                ]),
              ))),
    );
  }
}

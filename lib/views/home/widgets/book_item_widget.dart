import 'package:flutter/material.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Card(
          color: Colors.amber,
          child: SizedBox(
            height: 240,
            width: double.infinity,
            child: Image.network(""),
          )),
      const Text("책제목"),
      const Text("저자이름"),
    ]);
  }
}

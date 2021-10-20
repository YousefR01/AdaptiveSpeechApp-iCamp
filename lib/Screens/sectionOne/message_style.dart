import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MessageStyle extends StatelessWidget {
  final FlutterTts tts = FlutterTts();
  dynamic _text;
  int s;
  String qm;
  // ScrollController controller = ScrollController();

  MessageStyle(this._text, this.s) {}
  MessageStyle.a1(this.qm) {
    speak1(am: qm);
  }
  // scroll() {
  //   controller.jumpTo(controller.position.maxScrollExtent);
  // }
  Future speak1({String am}) async {
    await tts.speak(am);
  }

  Future speak({String am}) async {
    await tts.speak(_text);
  }

  @override
  Widget build(BuildContext context) {
    // scroll();
    return SingleChildScrollView(
      // controller: controller,

      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
              child: (s == 0)
                  ? Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Container(
                        // margin: const EdgeInsets.symmetric(vertical: 6),
                        margin:
                            const EdgeInsets.only(top: 6, left: 10, right: 15),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(140, 140, 153, 4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(2),
                            bottomRight: Radius.circular(16),
                          ),
                        ),

                        child: ListTile(
                          title: Text(
                            _text,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            textWidthBasis: TextWidthBasis.longestLine,
                            maxLines: 15,
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Container(
                        margin:
                            const EdgeInsets.only(top: 6, left: 10, right: 15),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(185, 177, 199, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(2),
                          ),
                        ),
                        child: ListTile(
                          title: Text(
                            _text,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            textWidthBasis: TextWidthBasis.longestLine,
                            maxLines: 15,
                          ),
                          onTap: () => speak(),
                        ),
                      ),
                    )),
        ],
      ),
    );
  }
}

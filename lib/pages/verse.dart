// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors_in_immutables, sized_box_for_whitespace

//to start any Application ,you should write the code
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Project1(),
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
    );
  }
}

// ignore: must_be_immutable
class Project1 extends StatefulWidget {
  Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List li = [
    {
      //0
      "line1": "بيتٌ من الشعرِ أذهلني بروعتهِ",
      "line2": "توسّـدَ القلبَ مذْ أن خطهُ القلمُ"
    },
    {
      //0
      "line1": "أضحى شعاري وحفّـزني لأكرمهُ",
      "line2": "عشرينَ بيتًا لها مِن مِثلهِ حَـكمُ"
    },
    {
      //0
      "line1": "لا تشكُ للناسِ .. جُـرحًا أنتَ صاحبهُ",
      "line2": "لا يؤلمُ الجُرحَ …إلا منْ به ألمُ"
    },
    {
      //1
      "line1": "شكواكَ للناسِ منقصةٌ.. ومَن",
      "line2": "مِن الناسِ صاحٍ ما بهِ سقمُ"
    },
    {
      //2
      "line1": "فإن شكوتَ ..لمنْ طابَ الزمانُ لهُ",
      "line2": "عيناكَ تَغلي.. ومنْ تشكو لهُ صنمُ"
    },
    {
      //3
      "line1": "وإذا شكوتَ لمنْ شكواكَ ..تُسعدهُ",
      "line2": "أضفتَ جُـرحًا لجرحكَ.. اسمهُ الندمُ"
    },
    {
      //4
      "line1": "هلْ المواساةُ يومًا ..حـرَّرَتْ وطنــًا ",
      "line2": "أَم التعازي بديلٌ.. إن هوى العَلمُ"
    },
    {
      //5
      "line1": "منْ يندبُ الحظَ ..يطفئُ عينَ همِتَّهُ",
      "line2": "لا عينَ للحظِ .. إن لمْ تبصرْ الهممُ"
    },
    {
      //6
      "line1": "كمْ خابَ ظني.. بمنْ أهديتهُ ثقتي",
      "line2": "فأجبرتني ..على هِجرانِهُ التهمُ"
    },
    {
      //7
      "line1": "كمْ صِرتُ جسراً.. لمنْ أحببتهُ فمشى",
      "line2": "على ضلوعي.. وكمْ زلّتْ به قدمُ"
    },
    {
      //8
      "line1": "فداسَ قلبي ..وكانَ القلبُ منزلهُ",
      "line2": "فما وفائي لخلٍ ..مالهُ قيمُ",
    },
    {
      //9
      "line1": "لا اليأسُ ثوبي ..ولا الأحزانُ تكسرني",
      "line2": "جرحي عنيدٌ.. بلسعِ النارِ يلتئمُ"
    },
    {
      //0
      "line1": "اشربْ دموعَكَ واجرعْ مُـرّها عسلاً",
      "line2": "غزو الشموعَ حريقٌ وهي تبتسمُ"
    },
    {
      //0
      "line1": "والجِمْ همومَكَ واسرجْ ظهرهَّا فرسًا",
      "line2": "وانهضْ كسيفٍ إذا الأنصالُ تلتحمُ"
    },
    {
      //0
      "line1": "عدالةُ الأرضِ مُذْ خُلقتْ مزيفةُ",
      "line2": "والعدلُ في الأرضِ.. لا عدلٌ ولا ذممُ"
    },
    {
      //0
      "line1": "والخيرُ .. حَملٌ وديعٌ طيبٌ قَلِقٌ",
      "line2": "والشرُ.. ذئبٌ خبيثٌ ماكرٌ نَهمُ"
    },
    {
      //0
      "line1": "كل السكاكينْ صوبُ الشاةِ ..راكضةٌٌ ",
      "line2": "لِتطُمئنُ الذئبَ ..أن الشملَ ملتئمُ"
    },
    {
      //0
      "line1": "كنْ ذا دهاءٍ وكنْ لصًا ..بغيرِ يدٍ",
      "line2": "ترى الملذاتِ ..تحتَ يديكَ تزدحمُ"
    },
    {
      //0
      "line1": "المالُ والجاهُ …تمثالانِ مِنْ ذهبٍ",
      "line2": " لهما تصلي.. بكلِ لغاتِها الأممُ"
    },
    {
      //0
      "line1": "والأقوياءُ ..طواغيتٌ فراعنةٌٌ",
      "line2": "وأكثرْ الناسَ تحتَ عروشِهمْ ..خَدَمُ"
    },
    {
      //0
      "line1": "شكواكَ شكواي.. يا منْ تكتوي ألمًا ",
      "line2": "ما سالَ دمعٌ على الخدينِ .. سالَ دمُ"
    },
    {
      //0
      "line1": "ومنْ سوى اللهِ ..نأوي تحتَ سدرَتهِ",
      "line2": " ونستغيثُ بهِ ..عوناً ونعتصمُ"
    },
    {
      //0
      "line1": "كنْ فيلسوفا ترى أنَ الجميعَ هنا",
      "line2": "يتقاتلونَ على عدمٍ وهمْ عدمُ"
    },
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "البيت رقم ${myIndex + 1} ",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              li[myIndex]["line1"],
              // "jnj hbnkjl",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              li[myIndex]["line2"],
              // "لا يؤلمُ الجُرحَ …إلا منْ به ألمُ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    //10
                    setState(() {
                      if (myIndex == li.length - 1) myIndex = -1;
                      if (myIndex < li.length - 1) myIndex++;
                    });
                  },
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                  backgroundColor: Colors.orange,
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (myIndex > 0) myIndex--;
                    });
                  },
                  child: Icon(
                    Icons.arrow_right,
                    size: 60,
                  ),
                  backgroundColor: Colors.orange,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
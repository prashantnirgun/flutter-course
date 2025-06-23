import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''), centerTitle: true),
      body: MyMenu(),
    );
  }
}

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            //SizedBox(
            //  height: 100,
            //  width: 100,
            child: ClipOval(
              //ClipRRect(
              //borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/images/bg-strawberry.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xffE6F1FA),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Center(
              child: Text(
                'स्ट्रॉबेरी डिलाइट',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xffE6F1FA),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "ताज़ी और रसीली स्ट्रॉबेरी से तैयार यह डिश न केवल स्वाद में बेहतरीन है, बल्कि देखने में भी बेहद आकर्षक लगती है। इसकी मिठास और हल्की खटास का संतुलन हर उम्र के लोगों को पसंद आता है। यह व्यंजन खास मौकों पर परोसे जाने के लिए एक उत्तम विकल्प है। इसमें उपयोग की गई प्राकृतिक सामग्री इसे और भी खास बनाती है। चाहे ठंडे मौसम में खाया जाए या गर्मियों में ठंडा-ठंडा परोसा जाए, इसका स्वाद हर बार दिल जीत लेता है।",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "Poppins"),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xffE6F1FA),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.black.withAlpha(128)),
                    Icon(Icons.star, color: Colors.black.withAlpha(128)),
                    Icon(Icons.star, color: Colors.black.withAlpha(128)),
                    Icon(Icons.star, color: Colors.black.withAlpha(128)),
                  ],
                ),

                Text('170 समीक्षा'),
              ],
            ),
          ),
          Container(
            height: 90,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xffE6F1FA),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.kitchen, color: Colors.blue),
                    Text('प्रस्तुत'),
                    Text('25 min'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.alarm), Text('रसोइया'), Text('1 Hr')],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.restaurant), Text('फ़ीड'), Text('4.6')],
                ),
              ],
            ),
          ),

          /*
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                image: AssetImage("assets/images/bg-strawberry.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            */
          //),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text / Button'), centerTitle: true),
      body: MyTextField(),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({super.key});

  TextEditingController ageController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //outline border
          TextField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('Age'),
              prefixIcon: Icon(Icons.email),
              hint: Text("Enter your age"),
              border: OutlineInputBorder(),
            ),
            // onChanged: (value) {
            //   print('value');
            // },
          ),
          //border with diffrent options
          TextField(
            controller: nameController,
            //enabled: false,
            decoration: InputDecoration(
              prefixText: "Mr/Mrs ",
              suffixText: "@gmail.com",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(width: 1, color: Colors.blue),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
            ),
          ),
          TextField(
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.key),
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                print("your age is ${ageController.text}");
              },
              child: Text('Get Age'),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("Text Button")),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: Size(300, 40),
              maximumSize: Size(400, 40),
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
            ),
            child: Text('Outlined Button'),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/images/bg-strawberry.jpg"),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/images/bg-strawberry.jpg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

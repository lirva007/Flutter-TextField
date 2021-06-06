import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputValue = "";

  final TextEditingController controller = TextEditingController();

  void onSubmitted(String valor) {
    print(valor);
    setState(() {
      inputValue = "\n" + valor + inputValue;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magdalena Flores_EditText"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Ingrese Texto Aqui"),
                  onSubmitted: (String valor) {
                    onSubmitted(valor);
                  },
                  controller: controller,
                  autofocus: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(inputValue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPage();
}

class _CurrencyConverterPage extends State<CurrencyConverterPage> {
  final TextEditingController valueController = TextEditingController();
  double result = 0;

  void convert() {
    double value = double.parse(valueController.text);
    setState(() {
      result = (36.34 * value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 4,
          // centerTitle: true,
          title: const Text(
            'Currency Converter',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'THB ${result.toStringAsFixed(2)}',
            style: const TextStyle(
                fontSize: 60, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: valueController,
              // onSubmitted: (value) {
              //   print(value);
              // },
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  hintText: 'Pleace enter the amount in USD',
                  hintStyle: TextStyle(color: Colors.black54),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black54,
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    gapPadding: 20,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: TextButton(
              onPressed: () {
                convert();
              },
              style: ButtonStyle(
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                  minimumSize: const MaterialStatePropertyAll(
                      Size(double.infinity, 50))),
              child: const Text(
                'Convert',
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Click Me')),
          FilledButton(onPressed: () {}, child: const Text('Click Me')),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: FilledButton.tonal(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text('Click Me'),
            ),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Click Me'))
        ],
      )),
    );
  }
}

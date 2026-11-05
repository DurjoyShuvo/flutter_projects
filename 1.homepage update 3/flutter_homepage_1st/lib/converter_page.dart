import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double result = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Converter"),
        backgroundColor: const Color.fromARGB(255, 172, 173, 145),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 120, 90, 156),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("USD"),
                      Icon(Icons.swap_horiz),
                      Text("BDT"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: formKey,
                    child: Column(
                      
                      children: [
                        TextFormField(
                          controller: controller,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          decoration: const InputDecoration(
                            labelText: "Amount",
                            hintText: "Enter Amount",
                            prefixIcon: Icon(Icons.monetization_on),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Field is Empty!!";
                            }
                            if (double.tryParse(value.trim()) == null) {
                              return "Enter a valid number";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              result = double.parse(controller.text) * 124.34;
                              setState(() {});
                            }
                          },
                          child: const Text("Convert"),
                        ),
                        const SizedBox(height: 20),
                        Text("BDT: $result"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

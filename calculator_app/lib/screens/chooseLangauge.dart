import 'package:calculator_app/screens/appBarConstant.dart';
// import 'package:calculator_app/utlis/color.dart';
import 'package:flutter/material.dart';

class ChooseLangauge extends StatefulWidget {
  const ChooseLangauge({super.key});

  @override
  State<ChooseLangauge> createState() => _ChooseLangaugeState();
}

class _ChooseLangaugeState extends State<ChooseLangauge> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarConstant(),
      body: LanguageSelectionScreen(),
    );
  }
}

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String selectedLanguage = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Krish_Shah_Computer.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.48,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.lightGreenAccent,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 10, 25),
                    child: Text(
                      'Choose a Language:',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Color.fromARGB(255, 98, 184, 0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RadioListTile(
                              title: const Text(
                                'Hindi',
                                style: TextStyle(fontSize: 25),
                              ),
                              value: 'Hindi',
                              groupValue: selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  selectedLanguage = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              title: const Text(
                                'English',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              value: 'English',
                              groupValue: selectedLanguage,
                              onChanged: (value) {
                                setState(() {
                                  selectedLanguage = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (selectedLanguage.isNotEmpty)
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .red, // Replace with your desired color for the button
                        ),
                        child: const Text("Submit"),
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

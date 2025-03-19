import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function()
  startQuiz; // This function insert only lifting page root
  // Constrictor function
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/10.png',
            width: 300,
            color: const Color.fromARGB(
              255,
              255,
              0,
              0,
            ), // This is Opacity option
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way !',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(181, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 80),
          OutlinedButton.icon(
            onPressed: startQuiz, // This is page root function
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
              size: 28.50,
            ),
            label: const Text('Start Quiz'),
          ),
          const SizedBox(height: 100),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              'Prepaid By: neloymamun06@gmail.com\n             Mobile:01811-904002',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

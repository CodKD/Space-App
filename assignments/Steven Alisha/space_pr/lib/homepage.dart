import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space2/spaceScreen.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static String Rouutename = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/homepage.png'),
          fit: BoxFit.fill,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Spacescreen.Routename);
                  },
                  child: Row(
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        color: Colors.white,
                        size: 20,
                        Icons.arrow_forward_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

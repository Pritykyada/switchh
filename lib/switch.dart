import 'package:flutter/material.dart';

class CustomSwitchDemo extends StatefulWidget {
  const CustomSwitchDemo({super.key});

  @override
  State<CustomSwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<CustomSwitchDemo> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              alignment: on ? Alignment.bottomLeft : Alignment.bottomRight,
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    on = !on;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                      height: 30,
                      width: 30,
                      //alignment:on? Alignment.centerLeft: Alignment.centerRight,//text alignment
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          on ? "off" : "on",
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

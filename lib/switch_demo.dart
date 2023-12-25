import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isSwitch = false;

  void onTabSwitch(bool value) {
    isSwitch = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
            thumbColor: MaterialStateProperty.all(Colors.blueGrey),
            //focusColor: Colors.green,
            //hoverColor: Colors.black,
            activeColor: Colors.grey.shade900,
            activeTrackColor: Colors.blue,
            splashRadius: 56,
            //autofocus: true,
            //overlayColor: MaterialStateProperty.all(Colors.blue),
            activeThumbImage: const NetworkImage("https://tse4.mm.bing.net/th?id=OIP.olwZgnOgcvyaYI7gGjv_gAHaHZ&pid=Api&P=0&h=180",),
            dragStartBehavior: DragStartBehavior.down,
            inactiveThumbColor: Colors.green,
            trackOutlineWidth: MaterialStateProperty.all(2),
            thumbIcon: MaterialStateProperty.all(const Icon(Icons.add)),
            trackColor: MaterialStateProperty.all(Colors.yellow),
            inactiveTrackColor: Colors.pink,
            mouseCursor: SystemMouseCursors.alias,//web property
            trackOutlineColor: MaterialStateProperty.all(Colors.teal),
            materialTapTargetSize: MaterialTapTargetSize.padded,
            focusNode:FocusNode(debugLabel: "hyyyyyy"),
            //thumbColor: MaterialStateColor.resolveWith((states) => ),
            value: isSwitch,
            onChanged: onTabSwitch,
            // onChanged: (value) => onTapSwitch(value),
          ),
          Center(
            child: AnimatedContainer(
              padding: const EdgeInsets.all(5),
              duration: const Duration(seconds: 1),
              height: isSwitch ? 200 : 100,
              width: isSwitch ? 200 : 100,
              alignment: isSwitch ? Alignment.bottomLeft : Alignment.topRight,
              decoration: BoxDecoration(
                border: Border.all(
                    color: isSwitch
                        ? Colors.green
                        : const Color.fromARGB(100, 90, 100, 4),
                    width: isSwitch ? 2 : 4),
                gradient: isSwitch
                    ? const LinearGradient(
                    colors: [Colors.white, Color.fromRGBO(56, 20, 90, 0.4)])
                    : const LinearGradient(colors: [
                  Color.fromRGBO(70, 20, 90, 0.4),
                  Colors.white,
                ]),
                color: isSwitch ? Colors.teal.shade800 : Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSwitch ? Colors.black : Colors.white,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                  color: isSwitch ? Colors.white : Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'button.dart';

class NumberPadBody extends StatelessWidget {
  final Size size;
  final String display;
  final Function(String value, IconData? icon) onNumberButtonTap;
  final Function() onPayButtonPress;
  final String buttonString;
  final IconData iconData;
  final Widget? child;

  const NumberPadBody({
    Key? key,
    required this.size,
    required this.display,
    required this.onNumberButtonTap,
    required this.onPayButtonPress,
    required this.buttonString,
    required this.iconData,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 1),
        Expanded(
          flex: 1,
          child: Text(
            display,
            textScaleFactor: 1.5,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          child: ButtonBar(
            buttonHeight: 0,
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberButton(size, '1'),
              numberButton(size, '2'),
              numberButton(size, '3')
            ],
          ),
        ),
        Expanded(
          child: ButtonBar(
            buttonHeight: 0,
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberButton(size, '4'),
              numberButton(size, '5'),
              numberButton(size, '6')
            ],
          ),
        ),
        Expanded(
          child: ButtonBar(
            buttonHeight: 0,
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberButton(size, '7'),
              numberButton(size, '8'),
              numberButton(size, '9')
            ],
          ),
        ),
        Expanded(
          child: ButtonBar(
            buttonHeight: 0,
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberButton(size, '.'),
              numberButton(size, '0'),
              numberButton(
                size,
                '',
                icon: Icons.backspace_outlined,
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          child: MainCircleButton(
            icon: Icons.send_outlined,
            label: buttonString,
            onPress: onPayButtonPress,
          ),
        ),
        child ??
            Container(
              width: 0,
            ),
      ],
    );
  }

  Widget numberButton(Size size, String value, {IconData? icon}) {
    return InkWell(
      borderRadius: BorderRadius.circular(45),
      onTap: () => onNumberButtonTap(value, icon),
      child: Container(
        alignment: Alignment.center,
        height: size.height * 0.12,
        width: size.width * 0.15,
        decoration: BoxDecoration(border: Border.all(width: 0.025)),
        child: Center(
          child: icon != null
              ? Icon(
                  icon,
                  size: 35,
                )
              : Text(
                  value,
                  textScaleFactor: 1.0,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}

import 'package:edu_learn_app/theme/colors.dart';
import 'package:edu_learn_app/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ButtonRow extends StatefulWidget {
//   const ButtonRow({super.key});

//   @override
//   State<ButtonRow> createState() => _ButtonRowState();
// }

final toggleWidgetsProvider = StateProvider<bool>((ref) {
  return true;
});

// class _ButtonRowState extends State<ButtonRow> {
//   bool _toggleWidgets = true;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         ...List.generate(
//             _buttons.length,
//             (index) => index == 0 || index == 2
//                 ? Expanded(
//                     flex: 11,
//                     child: _MyButton(
//                       buttonProperties: _buttons[index],
//                       onSelect: () {
//                         setState(() {
//                           for (var element in _buttons) {
//                             element.isSelected = false;
//                           }

//                           _buttons[index].isSelected = true;

//                           _toggleWidgets = _buttons[0].isSelected;
//                         });
//                       },
//                     ),
//                   )
//                 : const Expanded(
//                     flex: 2, child: SizedBox())), //   _buttons[index]),
//       ],
//     );
//   }
// }

class ButtonRow extends ConsumerStatefulWidget {
  const ButtonRow({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ButtonRowState();
}

class _ButtonRowState extends ConsumerState<ButtonRow> {
  // bool _toggleWidgets = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            _buttons.length,
            (index) => index == 0 || index == 2
                ? Expanded(
                    flex: 11,
                    child: _MyButton(
                      buttonProperties: _buttons[index],
                      onSelect: () {
                        setState(() {
                          for (var element in _buttons) {
                            element.isSelected = false;
                          }

                          _buttons[index].isSelected = true;

                          ref.watch(toggleWidgetsProvider.notifier).state =
                              _buttons[0].isSelected;
                        });
                      },
                    ),
                  )
                : const Expanded(
                    flex: 2, child: SizedBox())), //   _buttons[index]),
      ],
    );
  }
}

class _MyButton extends StatefulWidget {
  const _MyButton({required this.buttonProperties, required this.onSelect});

  final ButtonProperties buttonProperties;
  final VoidCallback onSelect;

  @override
  State<_MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<_MyButton> {
  @override
  Widget build(BuildContext context) {
    var isSelected = widget.buttonProperties.isSelected;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.buttonProperties.isSelected = true;
          widget.onSelect();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? colors.orange : Colors.transparent,
          border: Border.all(
              color: isSelected ? Colors.transparent : colors.greyBorder),
        ),
        child: Text(
          widget.buttonProperties.text,
          style: isSelected ? fonts.pjs10WhiteW700 : fonts.pjs10GreyHintW700,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ButtonProperties {
  ButtonProperties({required this.isSelected, required this.text});
  final String text;
  bool isSelected;
}

final _buttons = [
  ButtonProperties(isSelected: true, text: 'Subject matter'),
  ButtonProperties(isSelected: true, text: ''),
  ButtonProperties(isSelected: false, text: 'About class'),
];

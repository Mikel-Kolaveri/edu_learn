import 'package:edu_learn_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Values { roadmap, premium, popular, freemium, all }

class FilterMenu extends ConsumerStatefulWidget {
  const FilterMenu(this.onSelected, {super.key});
  final void Function(Values value) onSelected;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterMenuState();
}

class _FilterMenuState extends ConsumerState<FilterMenu> {
  String text = 'Filter';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: colors.greyBorder,
          ),
          borderRadius: BorderRadius.circular(10)),
      width: 108,
      child: PopupMenuButton(
        itemBuilder: (context) => <PopupMenuEntry<Values>>[
          const PopupMenuItem<Values>(
            value: Values.all,
            child: Text('All'),
          ),
          const PopupMenuItem<Values>(
            value: Values.roadmap,
            child: Text('Roadmap'),
          ),
          const PopupMenuItem<Values>(
            value: Values.premium,
            child: Text('Premium Class'),
          ),
          const PopupMenuItem<Values>(
            value: Values.popular,
            child: Text('Popular class'),
          ),
          const PopupMenuItem<Values>(
            value: Values.freemium,
            child: Text('Freemium class'),
          ),
        ],
        onSelected: (value) {
          setState(() {
            text = value.name;
            widget.onSelected(value);
          });
        },
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(text), const Icon(Icons.arrow_drop_down)],
        ),
        elevation: 16,
      ),
    );
  }
}

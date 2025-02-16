import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final ValueNotifier<String?> selectedValueNotifier;

  DropdownWidget({required this.selectedValueNotifier});

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  List<String> options = ['Horor', 'Fantasy', 'Romance'];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String?>(
      valueListenable: widget.selectedValueNotifier,
      builder: (context, selectedValue, child) {
        return DropdownButton<String>(
          hint: Text("Pilih opsi"),
          value: selectedValue,
          items: options.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            widget.selectedValueNotifier.value = newValue; // Update value
          },
        );
      },
    );
  }
}

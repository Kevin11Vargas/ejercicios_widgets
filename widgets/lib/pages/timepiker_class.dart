import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  final DateTime initialDate;
  final ValueChanged<DateTime> onChanged;

  const DateTimePicker({
    Key? key,
    required this.initialDate,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        widget.onChanged(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate = "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}";

    return InkWell(
      onTap: () => _selectDate(context),
      child: Row(
        children: <Widget>[
          Icon(Icons.calendar_today),
          SizedBox(width: 10),
          Text(
            formattedDate,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Components/Input.dart';
import 'package:flutter_unity_app/Components/InputWithLabel.dart';
import 'package:intl/intl.dart';

class DateInput extends StatefulWidget {
  DateTime date = DateTime.now();
  String dob = DateTime.now().toString();
  Function setDOB;
  DateInput({@required this.setDOB});

  @override
  _DateInputState createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  @override
  Widget build(BuildContext context) {
    widget.dob =
        DateFormat("dd-MM-yyyy").format(DateTime.parse(widget.date.toString()));
    return GestureDetector(
      child: InputWithLabel(
        label: "Date of Birth",
        hint: "MM DD YYYY",
        setText: () {},
        type: INPUT_TYPE.DATE,
        enabled: false,
        text: widget.dob,
        icon: Icon(
          Icons.arrow_drop_down,
          size: 35,
        ),
      ),
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext builder) {
              return Container(
                  height: MediaQuery.of(context).copyWith().size.height / 3,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    maximumYear: DateTime.now().year,
                    onDateTimeChanged: (date) {
                      widget.setDOB(widget.dob);
                      setState(() {
                        widget.date = date;
                      });
                    },
                  ));
            });
      },
    );
  }
}

// Input(
//         hint: "MM DD YYYY",
//         setText: () {},
//         type: INPUT_TYPE.DATE,
//         enabled: false,
//         text: widget.dob,
//       ),

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/contact_page/cubit/contact_cubit.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key, required this.onChanged});
  final String onChanged;

  @override
  Widget build(BuildContext context) {
    final currenteState = context.watch<ContactCubit>();

    return TextFormField(
      onChanged: (name) {
        currenteState.onFormInputChanged(name: name);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Name is required!';
        }
        return null;
      },
      /*  onSaved: (newValue) => setState(() {
                            // ignore: unused_result
                            _formInfo.copyWith(name: newValue ?? '');
                            print(_formInfo);
                          }), */
      decoration: const InputDecoration(
        //label: const Text('Rodrigo Castro  |'),
        // labelText: 'Rodrigo Castro  |',
        //counterText: 'Rodrigo Castro  |',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: secondaryGreyColor,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}

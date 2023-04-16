import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/contact_page/cubit/contact_cubit.dart';
import 'package:redrodrigo/pages/contact_page/entity/form_entity.dart';
import 'package:redrodrigo/pages/contact_page/widgets/contact_form_snippet.dart';
import 'package:redrodrigo/pages/contact_page/widgets/messageCustom.dart';
import 'package:redrodrigo/shared/constants/colors_schema.dart';

class ContatcForm extends StatefulWidget {
  const ContatcForm({super.key});

  @override
  State<ContatcForm> createState() => _ContatcFormState();
}

class _ContatcFormState extends State<ContatcForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FormEntity _formInfo = FormEntity(name: '', email: '', message: '');

  bool messageCustom = false;
  void showContactForm() {
    setState(() {
      messageCustom = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currenteState = context.watch<ContactCubit>();
    return Row(
      children: [
        if (messageCustom) ...[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 50),
              child: CustomMessage(showForm: showContactForm),
            ),
          ),
        ] else ...[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 50),
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('_name:'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
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
                        ),
                      ),
                      const Text('_email:'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (email) {
                            currenteState.onFormInputChanged(email: email);
                          },
                          validator: ((value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required!';
                            } else if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                              return 'Please enter a valid email address!';
                            }
                            return null;
                          }),
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
                        ),
                      ),
                      const Text('_message:'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (message) {
                            currenteState.onFormInputChanged(message: message);
                          },
                          validator: ((value) {
                            if (value == null || value.isEmpty) {
                              return 'Please submit your message !';
                            }
                            return null;
                          }),
                          maxLines: 4,
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
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColorDarker,
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            const success = true;
                            if (success) {
                              currenteState.cleanState();
                              setState(() {
                                messageCustom = true;
                              });
                            }
                            currenteState.cleanState();
                            _formKey.currentState!.reset();
                            if (!_formKey.currentState!.mounted) return;
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: accentOrangeColor,
                                behavior: SnackBarBehavior.fixed,
                                duration: Duration(seconds: 8),
                                content: Text(
                                  "Oo ooh... Some issues! \nI will fix this, Please directly ping me on my socials, Sorry for the trouble!",
                                  style: TextStyle(
                                    color: secondaryWhiteColor,
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'submit-message',
                          style: TextStyle(color: secondaryWhiteColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            color: secondaryWhiteColor,
          ),
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.all(20).copyWith(top: 50),
                child: const ContactFormSnippet()),
          ),
        ]
      ],
    );
  }
}

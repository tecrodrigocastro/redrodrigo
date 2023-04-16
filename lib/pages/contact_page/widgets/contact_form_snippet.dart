import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redrodrigo/pages/contact_page/cubit/contact_cubit.dart';
import 'package:redrodrigo/shared/constants/constants.dart';
import 'package:redrodrigo/shared/enums.dart';

TextSpan getCustomTextSpan({required String text, required TextType textType}) {
  return TextSpan(
    text: text,
    style: TextStyle(
      color: textColorMap[textType],
      fontSize: 17,
      height: 1.4,
    ),
  );
}

class ContactFormSnippet extends StatelessWidget {
  const ContactFormSnippet({super.key});

  @override
  Widget build(BuildContext context) {
    final currentState = context.watch<ContactCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: '1',
            style: TextStyle(
              color: textColorMap[TextType.lineNo],
              fontSize: 17,
            ),
            children: [
              getCustomTextSpan(text: '    void ', textType: TextType.keyword),
              getCustomTextSpan(
                  text: 'sendMessage', textType: TextType.variable),
              getCustomTextSpan(text: '(', textType: TextType.symbol),
              getCustomTextSpan(
                  text: 'Map<String,dynamic> ', textType: TextType.keyword),
              getCustomTextSpan(text: 'message', textType: TextType.variable),
              getCustomTextSpan(text: ') ', textType: TextType.symbol),
              getCustomTextSpan(text: 'async ', textType: TextType.keyword),
              getCustomTextSpan(text: '{\n', textType: TextType.symbol),
              getCustomTextSpan(text: '2', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '      final ', textType: TextType.keyword),
              getCustomTextSpan(text: 'response', textType: TextType.variable),
              getCustomTextSpan(text: ' = ', textType: TextType.symbol),
              getCustomTextSpan(text: 'await ', textType: TextType.keyword),
              getCustomTextSpan(
                  text: ' Dio().post', textType: TextType.variable),
              getCustomTextSpan(text: '(', textType: TextType.symbol),
              getCustomTextSpan(text: 'Uri.parse', textType: TextType.keyword),
              getCustomTextSpan(text: '(', textType: TextType.symbol),
              getCustomTextSpan(
                text: '"https://redrodrigo.com/messages"',
                textType: TextType.string,
              ),
              getCustomTextSpan(text: ')', textType: TextType.symbol),
              getCustomTextSpan(text: ')', textType: TextType.symbol),
              getCustomTextSpan(text: ';\n', textType: TextType.symbol),
              getCustomTextSpan(text: '3', textType: TextType.lineNo),
              getCustomTextSpan(text: '      if ', textType: TextType.keyword),
              getCustomTextSpan(text: ' (', textType: TextType.symbol),
              getCustomTextSpan(
                  text: 'response.statusCode', textType: TextType.variable),
              getCustomTextSpan(text: ' == ', textType: TextType.symbol),
              getCustomTextSpan(text: '201 ', textType: TextType.string),
              getCustomTextSpan(text: ')', textType: TextType.symbol),
              getCustomTextSpan(text: ' {\n', textType: TextType.symbol),
              getCustomTextSpan(text: '4', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '        print', textType: TextType.keyword),
              getCustomTextSpan(text: '(', textType: TextType.symbol),
              getCustomTextSpan(
                  text: '"Excited to connect with you, Will reply back soon!"',
                  textType: TextType.string),
              getCustomTextSpan(text: ')', textType: TextType.symbol),
              getCustomTextSpan(text: ';\n', textType: TextType.symbol),
              getCustomTextSpan(text: '5', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '      } else ', textType: TextType.symbol),
              getCustomTextSpan(text: ' {\n', textType: TextType.symbol),
              getCustomTextSpan(text: '6', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '        print', textType: TextType.keyword),
              getCustomTextSpan(text: '(', textType: TextType.symbol),
              getCustomTextSpan(
                  text:
                      '"Oo oh, This does not seem to work, ping me on my socials !"',
                  textType: TextType.string),
              getCustomTextSpan(text: ')', textType: TextType.symbol),
              getCustomTextSpan(text: ';\n', textType: TextType.symbol),
              getCustomTextSpan(text: '7', textType: TextType.lineNo),
              getCustomTextSpan(text: '      }\n', textType: TextType.symbol),
              getCustomTextSpan(text: '8', textType: TextType.lineNo),
              getCustomTextSpan(text: '    }\n', textType: TextType.symbol),
              getCustomTextSpan(text: '9\n', textType: TextType.lineNo),
              getCustomTextSpan(text: '10', textType: TextType.lineNo),
              getCustomTextSpan(
                text: '   const ',
                textType: TextType.keyword,
              ),
              getCustomTextSpan(
                text: ' message ',
                textType: TextType.variable,
              ),
              getCustomTextSpan(
                text: ' = ',
                textType: TextType.keyword,
              ),
              getCustomTextSpan(
                text: ' { \n',
                textType: TextType.symbol,
              ),
              getCustomTextSpan(text: '11 ', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '     "name"', textType: TextType.variable),
              getCustomTextSpan(
                text: ' :',
                textType: TextType.symbol,
              ),
              getCustomTextSpan(
                text: '   "${currentState.state.formEntity!.name}"',
                textType: TextType.string,
              ),
              getCustomTextSpan(
                text: ',\n',
                textType: TextType.symbol,
              ),
              getCustomTextSpan(text: '12 ', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '     "email"', textType: TextType.variable),
              getCustomTextSpan(
                text: ' :',
                textType: TextType.symbol,
              ),
              getCustomTextSpan(
                text: '   "${currentState.state.formEntity!.email}"',
                textType: TextType.string,
              ),
              getCustomTextSpan(
                text: ',\n',
                textType: TextType.symbol,
              ),
              getCustomTextSpan(text: '13 ', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '     "message"', textType: TextType.variable),
              getCustomTextSpan(
                text: ' :',
                textType: TextType.symbol,
              ),
              getCustomTextSpan(
                text: '   "${currentState.state.formEntity!.message}"',
                textType: TextType.string,
              ),
              getCustomTextSpan(
                text: ',\n',
                textType: TextType.symbol,
              ),
              getCustomTextSpan(text: '14 ', textType: TextType.lineNo),
              getCustomTextSpan(text: '   }', textType: TextType.symbol),
              getCustomTextSpan(text: ';\n', textType: TextType.symbol),
              getCustomTextSpan(text: '15\n', textType: TextType.lineNo),
              getCustomTextSpan(text: '16', textType: TextType.lineNo),
              getCustomTextSpan(
                  text: '   sendMessage', textType: TextType.keyword),
              getCustomTextSpan(text: '(', textType: TextType.symbol),
              getCustomTextSpan(text: 'message', textType: TextType.variable),
              getCustomTextSpan(text: ')', textType: TextType.symbol),
              getCustomTextSpan(text: ';', textType: TextType.symbol),
            ],
          ),
        ),
      ],
    );
  }
}

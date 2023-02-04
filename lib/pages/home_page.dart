import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('images/shorter.jpg',
          width: 250.0,
          height: 250.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'A simple link but powerful tool',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Link Shorter is a app that takes a long URL and converts it into a shorter., '
                  'You can quickly and easily turn long, unwieldy URLs into , '
                  'more manageable links for sharing '
                  'on social media, in emails, or anywhere else you need to share a link.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  prefixIcon: Icon(Ionicons.link),
                  hintText: 'Enter your url',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10.0
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter a url';
                  }
                  if(!value.startsWith('https://') || !value.startsWith('www.')){
                    return 'Please enter a valid url';
                  }
                  final urlRegex = RegExp(
                      r'^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$'
                  );
                  if (!urlRegex.hasMatch(value)){
                    return 'Please enter a valid url';
                  }
                  return null;
                },
              ),
          ),
        )
      ],
    );
  }
}

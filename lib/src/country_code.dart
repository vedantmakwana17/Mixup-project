// import 'package:common_demo/constants.dart';
import 'package:country_picker/country_picker.dart';
import 'package:demo/src/common%20Api_http/const.dart';
// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:phone_form_field/phone_form_field.dart';

void main() {
  runApp(const CountryCode());
}

class CountryCode extends StatelessWidget {
  const CountryCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      supportedLocales: const [
        Locale('en'),
        Locale('el'),
        Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
        Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    showCountryPicker(
      context: context,
      showPhoneCode:
          true, // optional. Shows phone code before the country name.
      onSelect: (dynamic country) {
        debugPrint('Select country: ${country.displayName}');
        debugPrint('Select countryCode: ${country.countryCode}');
        debugPrint('Select phoneCode: ${country.phoneCode}');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PhoneFormField(
                initialValue: PhoneNumber.parse('+91'), // or use the controller
                validator: PhoneValidator.compose(
                    [PhoneValidator.required(), PhoneValidator.validMobile()]),
                // countrySelectorNavigator: const CountrySelectorNavigator.page(),
                onChanged: (phoneNumber) =>
                    debugPrint('changed into $phoneNumber'),
                enabled: true,
                isCountrySelectionEnabled: true,
                showDialCode: true,
                showFlagInInput: true,
                flagSize: 16
                // + all parameters of TextField
                // + all parameters of FormField
                // ...
                )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

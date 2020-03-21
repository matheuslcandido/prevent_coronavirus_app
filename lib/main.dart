import 'package:flutter/material.dart';

import './prevention.dart';
import './preventionControler.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final preventions = const [
    {
      'group': 'Protect Yourself',
      'title': 'Clean your hands often',
      'descriptions': [
        {
          'text':
              'Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.'
        },
        {
          'text':
              'If soap and water are not readily available, use a hand sanitizer that contains at least 60% alcohol. Cover all surfaces of your hands and rub them together until they feel dry.'
        },
        {
          'text':
              'Avoid touching your eyes, nose, and mouth with unwashed hands.'
        },
      ],
      'imageUrl':
          'https://www.cdc.gov/coronavirus/2019-ncov/images/protect-wash-hands.png',
    },
    {
      'group': 'Protect Yourself',
      'title': 'Avoid close contact',
      'descriptions': [
        {'text': 'Avoid close contact with people who are sick.'},
        {
          'text':
              'Put distance between yourself and other people if COVID-19 is spreading in your community. This is especially important for people who are at higher risk of getting very sick.'
        },
      ],
      'imageUrl':
          'https://www.cdc.gov/coronavirus/2019-ncov/images/protect-quarantine.png',
    },
    {
      'group': 'Protect Others',
      'title': 'Stay home if you’re sick',
      'descriptions': [
        {
          'text':
              'Stay home if you are sick, except to get medical care. Learn what to do if you are sick.'
        },
      ],
      'imageUrl':
          'https://www.cdc.gov/coronavirus/2019-ncov/images/COVIDweb_02_bed.png',
    },
    {
      'group': 'Protect Others',
      'title': 'Cover coughs and sneezes',
      'descriptions': [
        {
          'text':
              'Cover your mouth and nose with a tissue when you cough or sneeze or use the inside of your elbow.'
        },
        {'text': 'Throw used tissues in the trash.'},
        {
          'text':
              'Immediately wash your hands with soap and water for at least 20 seconds. If soap and water are not readily available, clean your hands with a hand sanitizer that contains at least 60% alcohol.'
        },
      ],
      'imageUrl':
          'https://www.cdc.gov/coronavirus/2019-ncov/images/COVIDweb_06_coverCough.png',
    },
    {
      'group': 'Protect Others',
      'title': 'Wear a facemask if you are sick',
      'descriptions': [
        {
          'text':
              'If you are sick: You should wear a facemask when you are around other people (e.g., sharing a room or vehicle) and before you enter a healthcare provider’s office. If you are not able to wear a facemask (for example, because it causes trouble breathing), then you should do your best to cover your coughs and sneezes, and people who are caring for you should wear a facemask if they enter your room. Learn what to do if you are sick.'
        },
        {
          'text':
              'If you are NOT sick: You do not need to wear a facemask unless you are caring for someone who is sick (and they are not able to wear a facemask). Facemasks may be in short supply and they should be saved for caregivers.'
        },
      ],
      'imageUrl':
          'https://www.cdc.gov/coronavirus/2019-ncov/images/COVIDweb_05_mask.png',
    },
    {
      'group': 'Protect Others',
      'title': 'Clean and disinfect',
      'descriptions': [
        {
          'text':
              'Clean AND disinfect frequently touched surfaces daily. This includes tables, doorknobs, light switches, countertops, handles, desks, phones, keyboards, toilets, faucets, and sinks.'
        },
        {
          'text':
              'If surfaces are dirty, clean them: Use detergent or soap and water prior to disinfection.'
        },
      ],
      'imageUrl':
          'https://www.cdc.gov/coronavirus/2019-ncov/images/COVIDweb_09_clean.png',
    },
  ];

  var _indexPrevention = 0;

  void _nextPrevention() {
    if (_indexPrevention == preventions.length - 1) {
      setState(() {
        _indexPrevention = 0;
      });
    } else {
      setState(() {
        _indexPrevention = _indexPrevention + 1;
      });
    }
  }

  void _previousPrevention() {
    if (_indexPrevention == 0) {
      setState(() {
        _indexPrevention = preventions.length - 1;
      });
    } else {
      setState(() {
        _indexPrevention = _indexPrevention - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            preventions[_indexPrevention]['group'],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 15,
                child: Prevention(
                  preventions: preventions,
                  indexPrevention: _indexPrevention,
                ),
              ),
              Expanded(
                flex: 1,
                child: PreventionControler(
                  previousPrevention: _previousPrevention,
                  nextPrevention: _nextPrevention,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

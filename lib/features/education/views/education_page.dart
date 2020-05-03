import 'package:covstats/features/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({
    Key key,
  }) : super(key: key);

  _launchURL() async {
    const url = 'https://covid19responsefund.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchDebunkedMyths() async {
    const url =
        'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all((20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                'Coronavirus disease\n(COVID - 19) advice for\nthe public'
                    .text
                    .bold
                    .size(22.0)
                    .make(),
                SizedBox(height: 15.0),
                'Stay aware of the latest information on the COVID-19 outbreak, available'
                        'on the WHO website and through your national and lcoal public health authority.'
                        'Most people who become infected experience mild illness and recover, but it can be more severe for others.'
                    .text
                    .color(Colors.grey[500])
                    .size(16.0)
                    .make(),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: _launchURL,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: 'Donate and help'.text.make(),
                      ),
                      color: AppColors.primaryRed,
                      textColor: Colors.white,
                    ),
                    RaisedButton(
                      onPressed: _launchDebunkedMyths,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: 'Debunked myths'.text.make(),
                      ),
                      color: AppColors.primaryRed,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                'Take care of your health and protect others by doing the following:'
                    .text
                    .size(16.0)
                    .make(),
                SizedBox(height: 10.0),
                PreventionTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PreventionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          leading: Image.asset('assets/images/prevention_wash.png'),
          title: 'Clean your hands often'.text.size(18.0).bold.make(),
          subtitle: 'Wash hands often with soap and water for at least 20s.'
              .text
              .make(),
        ),
        Divider(),
        ListTile(
          leading: Image.asset('assets/images/prevention_mask.png'),
          title: 'Wear a facemask'.text.size(18.0).bold.make(),
          subtitle: 'You should wear facemask when you are around other people.'
              .text
              .make(),
        ),
        Divider(),
        ListTile(
          leading: Image.asset('assets/images/prevention_touch.png'),
          title: 'Avoid touching your face'.text.size(18.0).bold.make(),
          subtitle:
              'Hands touch many surfaces and can pick up viruses.'.text.make(),
        ),
        Divider(),
        ListTile(
          leading: Image.asset('assets/images/prevention_contact.png'),
          title: 'Avoid close contact'.text.size(18.0).bold.make(),
          subtitle:
              'Put distance between yourself and other people.'.text.make(),
        ),
      ],
    );
  }
}

import 'package:covstats/core/constants/faqs.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FAQsPage extends StatelessWidget {
  const FAQsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: FAQs.questionAnswers.length,
          itemBuilder: (context, index) => ExpansionTile(
            title:
                '${FAQs.questionAnswers[index]['question']}'.text.bold.make(),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: '${FAQs.questionAnswers[index]['answer']}'.text.make(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

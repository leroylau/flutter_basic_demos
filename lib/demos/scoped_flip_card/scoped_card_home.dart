import 'package:basic_demo/demos/scoped_flip_card/scoped_page.dart';
import 'package:basic_demo/models/scoped_flip_card/scoped_aliments.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedFlipCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedAliments>(
      model: ScopedAliments(),
      child: Scaffold(
        body: ScopedModelDescendant<ScopedAliments>(
          builder: (context, child, model) {
            var aliments = model.scopedAliments;
            return PageView.builder(
              itemCount: aliments.length,
              itemBuilder: (_, index) {
                return ScopedBurnOffPage();
              },
            );
          },
        ),
      ),
    );
  }
}

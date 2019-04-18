import 'package:basic_demo/models/scoped_flip_card/aliment_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedAliments extends Model {
  List<AlimentModel> _scopedAliments = alimentModels;

  List<AlimentModel> get scopedAliments => _scopedAliments;
}

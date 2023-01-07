import 'package:app/clean_arch/domain/models/person/person_model.dart';

abstract class IGetPersonsUseCase {
  Future<List<PersonModel>> execute();
}

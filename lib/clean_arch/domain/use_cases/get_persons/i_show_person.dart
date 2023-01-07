import 'package:app/clean_arch/domain/models/person/person_model.dart';

abstract class IShowPersonsUseCase {
  Future<PersonModel> execute({ required String id });
}

import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/infra/app_api/person/models/app_api_persons_response.dart';

class TranslateAppApiPersonListResponse {
  static List<PersonModel> toAppApiPersonListModel(
      AppApiPersonListResponse response) {
    final List<PersonModel> person = <PersonModel>[];
    for (var i in response.persons ?? []) {
      final PersonModel model = PersonModel(
        name: i.name,
        id: i.id,
        avatar: i.avatar,
        email: i.email,
        phone: i.phone,
        rating: i.rating,
      );
      person.add(model);
    }
    return person;
  }
}

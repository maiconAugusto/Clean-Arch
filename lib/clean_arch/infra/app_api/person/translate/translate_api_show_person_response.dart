import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/infra/app_api/person/models/app_api_persons_response.dart';

class TranslateAppApiShowPersonResponse {
  static PersonModel toApiShowPersonModel(AppApiPersonDetailResponse response) {
    return PersonModel(
      name: response.name!,
      id: response.id!,
      avatar: response.avatar!,
      email: response.email!,
      phone: response.phone!,
    );
  }
}

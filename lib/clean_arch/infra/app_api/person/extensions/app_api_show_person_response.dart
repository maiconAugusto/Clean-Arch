

import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/infra/app_api/person/models/app_api_persons_response.dart';
import 'package:app/clean_arch/infra/app_api/person/translate/translate_api_show_person_response.dart';

extension AppApiShowPersonExtension on AppApiPersonDetailResponse {
  PersonModel toApiShowPersonModel() {
    return TranslateAppApiShowPersonResponse.toApiShowPersonModel(this);
  }
}

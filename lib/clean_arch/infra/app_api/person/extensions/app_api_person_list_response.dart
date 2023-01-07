import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/infra/app_api/person/models/app_api_person_response.dart';
import 'package:app/clean_arch/infra/app_api/person/translate/translate_api_person_list_response.dart';

extension AppApiPersonExtension on AppApiPersonListResponse {
  List<PersonModel> toDiaApiPersonListModel() {
    return TranslateDiaApiPersonListResponse.toDiaApiPersonListModel(this);
  }
}

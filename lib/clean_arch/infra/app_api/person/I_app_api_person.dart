import 'package:app/clean_arch/infra/app_api/person/models/app_api_person_response.dart';

abstract class IAppApiPerson {
  Future<AppApiPersonListResponse> loadData();
}

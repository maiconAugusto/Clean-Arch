import 'package:app/clean_arch/infra/app_api/person/models/app_api_persons_response.dart';

abstract class IAppApiPerson {
  Future <AppApiPersonListResponse> loadListOfPersons();
  Future <AppApiPersonDetailResponse> loadUserData({ required String id });
}

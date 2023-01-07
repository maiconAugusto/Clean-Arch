import 'package:app/clean_arch/infra/app_api/person/I_app_api_person.dart';
import 'package:app/clean_arch/infra/app_api/person/models/app_api_persons_response.dart';
import 'package:app/clean_arch/infra/http/dio_http.dart';
import 'package:dio/dio.dart';

class AppApiPerson implements IAppApiPerson {
  final DioHttp dioHttp;

  AppApiPerson({
    required this.dioHttp,
  });

  @override
  Future<AppApiPersonListResponse> loadListOfPersons() async {
    try {
      final Response response = await dioHttp.get(url: "persons");

      final respondeBoy = (response.data as List)
          .map((company) => AppApiPersonDetailResponse.fromJson(company))
          .toList();

      return AppApiPersonListResponse(persons: respondeBoy);
    } catch (e) {
      rethrow;
    }
  }
  @override
  Future<AppApiPersonDetailResponse> loadUserData({ required String id }) async {
    try {
      final Response response = await dioHttp.get(url: "persons/$id");

      final respondeBoy = AppApiPersonDetailResponse.fromJson(response.data);

      return respondeBoy;
    } catch (e) {
      rethrow;
    }
  }
}

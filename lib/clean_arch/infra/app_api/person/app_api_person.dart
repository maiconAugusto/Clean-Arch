import 'package:app/clean_arch/infra/app_api/person/I_app_api_person.dart';
import 'package:app/clean_arch/infra/app_api/person/models/app_api_person_response.dart';
import 'package:app/clean_arch/infra/http/dio_http.dart';
import 'package:dio/dio.dart';

class AppApiPerson implements IAppApiPerson {
  final DioHttp dioHttp;

  AppApiPerson({
    required this.dioHttp,
  });

  @override
  Future<AppApiPersonListResponse> loadData() async {
    try {
      final Response response = await dioHttp.get(url: "persons");

      final respondeBoy = (response.data as List)
          .map((company) => AppApiPersonResponse.fromJson(company))
          .toList();

      return AppApiPersonListResponse(persons: respondeBoy);
    } catch (e) {
      rethrow;
    }
  }
}

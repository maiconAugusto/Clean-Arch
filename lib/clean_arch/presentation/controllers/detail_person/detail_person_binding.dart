import 'package:app/clean_arch/infra/app_api/person/app_api_person.dart';
import 'package:app/clean_arch/infra/http/dio_http.dart';
import 'package:app/clean_arch/presentation/controllers/detail_person/detail_person_controller.dart';
import 'package:app/clean_arch/services/use_cases/get_persons/show_person_use_case.dart';
import 'package:get/get.dart';

class DetailPersonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPersonController>(() => DetailPersonController(
        getPersonDetailUseCase:
            ShowPersonUseCase(apiHome: AppApiPerson(dioHttp: DioHttp()))));
  }
}

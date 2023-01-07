import 'package:app/clean_arch/infra/app_api/person/app_api_person.dart';
import 'package:app/clean_arch/infra/http/dio_http.dart';
import 'package:app/clean_arch/presentation/controllers/list_person/list_person_controller.dart';
import 'package:app/clean_arch/services/use_cases/get_persons/get_persons_use_case.dart';
import 'package:get/get.dart';

class ListPersonBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListPersonController>(() => ListPersonController(
        getPersonUseCase:
            GetPersonsUseCase(apiHome: AppApiPerson(dioHttp: DioHttp()))));
  }
}

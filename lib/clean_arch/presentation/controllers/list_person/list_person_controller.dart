import 'package:app/clean_arch/core/routes/app_routes.dart';
import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/services/use_cases/get_persons/get_persons_use_case.dart';
import 'package:get/get.dart';

class ListPersonController extends GetxController {
  final GetPersonsUseCase getPersonUseCase;
  RxList<PersonModel> persons = RxList<PersonModel>();

  RxBool isLoading = false.obs;
  final String name = "Maicon";

  ListPersonController({
    required this.getPersonUseCase,
  });

  @override
  void onInit() async {
    loadData();
    super.onInit();
  }

  void loadData() async {
    try {
      isLoading.value = true;

      final response = await getPersonUseCase.execute();

      persons.addAll(response);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }

  void gotPegaDetail({ required String id }) {
    Get.toNamed(AppRoutes.personDetail, arguments: {
      "id": id,
    });
  }
}

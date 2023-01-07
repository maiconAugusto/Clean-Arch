import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/services/use_cases/get_persons/get_persons_use_case.dart';
import 'package:get/get.dart';

class ListPersonController extends GetxController {
  final GetPersonsUseCase homeUseCase;
  RxList<PersonModel> persons = RxList<PersonModel>();

  RxBool isLoading = false.obs;
  final String name = "Maicon";

  ListPersonController({
    required this.homeUseCase,
  });
  @override
  void onInit() async {
    loadData();
    super.onInit();
  }

  void loadData() async {
    try {
      isLoading.value = true;

      final response = await homeUseCase.execute();

      persons.addAll(response);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }
}

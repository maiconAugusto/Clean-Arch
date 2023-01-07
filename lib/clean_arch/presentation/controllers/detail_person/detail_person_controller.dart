import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/services/use_cases/get_persons/show_person_use_case.dart';
import 'package:get/get.dart';

class DetailPersonController extends GetxController {
  final ShowPersonUseCase getPersonDetailUseCase;

  DetailPersonController({
    required this.getPersonDetailUseCase,
  });

  Rx<PersonModel> personModel = Rx<PersonModel>(const PersonModel(
    avatar: "",
    id: "",
    name: "",
    email: "",
    phone: "",
    rating: 0,
  ));

  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    loadData();
    super.onInit();
  }

  Future loadData() async {
    try {
      isLoading.value = true;
      final data =
          await getPersonDetailUseCase.execute(id: Get.arguments["id"]);
      personModel.value = data;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }
}

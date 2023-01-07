import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/domain/use_cases/get_persons/i_show_person.dart';
import 'package:app/clean_arch/infra/app_api/person/I_app_api_person.dart';
import 'package:app/clean_arch/infra/app_api/person/extensions/app_api_show_person_response.dart';

class ShowPersonUseCase implements IShowPersonsUseCase {
  final IAppApiPerson apiHome;

  ShowPersonUseCase({
    required this.apiHome,
  });

  @override
  Future<PersonModel> execute({ required String id}) async {
    final response =
        (await apiHome.loadUserData(id: id)).toApiShowPersonModel();
    return response;
  }
}

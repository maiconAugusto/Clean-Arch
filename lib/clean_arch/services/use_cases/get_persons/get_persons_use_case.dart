import 'package:app/clean_arch/domain/models/person/person_model.dart';
import 'package:app/clean_arch/domain/use_cases/get_persons/i_get_persons.dart';
import 'package:app/clean_arch/infra/app_api/person/I_app_api_person.dart';
import 'package:app/clean_arch/infra/app_api/person/extensions/app_api_person_list_response.dart';

class GetPersonsUseCase implements IGetPersonsUseCase {
  final IAppApiPerson apiHome;

  GetPersonsUseCase({
    required this.apiHome,
  });

  @override
  Future<List<PersonModel>> execute() async {
    final data = (await apiHome.loadData()).toDiaApiPersonListModel();
    return data;
  }
}

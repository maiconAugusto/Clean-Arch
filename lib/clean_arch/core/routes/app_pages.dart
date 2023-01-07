import 'package:app/clean_arch/core/routes/app_routes.dart';
import 'package:app/clean_arch/presentation/controllers/detail_person/detail_person_binding.dart';
import 'package:app/clean_arch/presentation/controllers/list_person/list_person_binding.dart';
import 'package:app/clean_arch/presentation/ui/pages/detail_person/detail_person.dart';

import 'package:app/clean_arch/presentation/ui/pages/person/home_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.persons,
      page: () => const HomePage(),
      binding: ListPersonBinding(),
    ),
    GetPage(
      name: AppRoutes.personDetail,
      page: () => const DetailPersonPage(),
      binding: DetailPersonBinding(),
    ),
  ];
}
import 'package:app/clean_arch/core/routes/app_routes.dart';
import 'package:app/clean_arch/presentation/controllers/list_person/list_person_binding.dart';

import 'package:app/clean_arch/presentation/ui/pages/person/home_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.variation,
      page: () => const HomePage(),
      binding: ListPersonBinding(),
    ),
  ];
}
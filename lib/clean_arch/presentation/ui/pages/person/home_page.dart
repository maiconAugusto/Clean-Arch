import 'package:app/clean_arch/presentation/controllers/list_person/list_person_controller.dart';
import 'package:app/clean_arch/presentation/ui/pages/person/components/skeleton_widget.dart';
import 'package:app/clean_arch/presentation/ui/pages/person/home_strings.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class HomePage extends GetView<ListPersonController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          centerTitle: true,
          title: const Text(HomeStrings.feed),
        ),
        body: Obx(
          () {
            if (controller.isLoading.value) {
              return const SkeletonWidget();
            }
            return Container(
              margin: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                child: ListView.builder(
                  itemCount: controller.persons.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => controller.gotPegaDetail(id: controller.persons[index].id),
                      child: Column(
                      children: [
                        ListTile(
                            title: Text(controller.persons[index].name),
                            leading: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: CachedNetworkImage(
                                height: 60,
                                width: 60,
                                imageUrl: controller.persons[index].avatar,
                                placeholder: (context, url) => Skeleton(
                                    height: 60,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    width: 60,
                                    style: SkeletonStyle.text),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 18, right: 10),
                          child: Divider(
                            height: 1,
                            color: Colors.grey[400],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    );
                  },
                ),
              ),
            );
          },
        ));
  }
}

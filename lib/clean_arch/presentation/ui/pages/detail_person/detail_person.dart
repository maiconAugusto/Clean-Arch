import 'package:app/clean_arch/presentation/controllers/detail_person/detail_person_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class DetailPersonPage extends GetView<DetailPersonController> {
  const DetailPersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Container(
            margin: const EdgeInsets.all(12),
            child: Skeleton(
                height: MediaQuery.of(context).size.height,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                width: MediaQuery.of(context).size.width,
                style: SkeletonStyle.text),
          );
        }
        return SingleChildScrollView(
            primary: false,
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: controller.personModel.value.avatar,
                      placeholder: (context, url) => Skeleton(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          style: SkeletonStyle.text),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(controller.personModel.value.name),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(controller.personModel.value.email),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(controller.personModel.value.phone),
                ],
              ),
            ));
      }),
    );
  }
}

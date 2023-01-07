import 'package:app/clean_arch/app/constants/app_colors.dart';
import 'package:app/clean_arch/presentation/controllers/detail_person/detail_person_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class DetailPersonPage extends GetView<DetailPersonController> {
  const DetailPersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
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
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    AppColors.redLight,
                    AppColors.grey,
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: controller.personModel.value.avatar,
                      placeholder: (context, url) => ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          child: Skeleton(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              style: SkeletonStyle.text)),
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
                  const SizedBox(
                    height: 20,
                  ),
                  RatingBarIndicator(
                    rating: double.tryParse(
                        controller.personModel.value.rating.toString())!,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: AppColors.yellow,
                    ),
                    itemCount: 5,
                    itemSize: 30.0,
                    unratedColor: AppColors.yellow50,
                    direction: Axis.horizontal,
                  ),
                ],
              ),
            ));
      }),
    );
  }
}

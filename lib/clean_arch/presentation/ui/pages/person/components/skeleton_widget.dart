import 'package:flutter/material.dart';
import 'package:skeleton_animation/skeleton_animation.dart';

class SkeletonWidget extends StatelessWidget {
  const SkeletonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
      children: [
        Skeleton(
          height: 70,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          width: MediaQuery.of(context).size.width,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
        const SizedBox(height: 8,),
        Skeleton(
          width: MediaQuery.of(context).size.width,
          height: 70,
          style: SkeletonStyle.text
        ),
      ],
    ),
    ),
    );
  }
}
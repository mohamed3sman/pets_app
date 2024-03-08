import 'package:flutter/material.dart';
import 'package:pets_app/Core/widgets/custom_search_textfield.dart';
import 'package:pets_app/Features/Dogs/presentation/views/widgets/dogs_list.dart';

class DogsViewBody extends StatelessWidget {
  const DogsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          toolbarHeight: 100,
          floating: false,
          centerTitle: true,
          flexibleSpace: const ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            child: Image(
              image: AssetImage('assets/images/appbar.PNG'),
              fit: BoxFit.cover,
            ),
          ),
          backgroundColor: Colors.transparent,
          title: CustomSearchTextField(onTap: () {}),
        ),
        const SliverToBoxAdapter(
          child: DogsList(),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:route_task/Features/ecommerce_home/presentation/view/widgets/custom_product_card.dart';
import 'package:route_task/core/constants.dart';

import '../../../../core/main_widgets/custom_text_form field.dart';

class EcommerceHome extends StatefulWidget {
  const EcommerceHome({super.key});

  @override
  State<EcommerceHome> createState() => _EcommerceHomeState();
}

class _EcommerceHomeState extends State<EcommerceHome> {
  late TextEditingController searchController;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          title: Image.asset(
            'assets/images/logo.png',
            width: 60,
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                        children: [
              Expanded(
                flex: 6,
                  child:CustomTextFormField(
                hintText: 'What Do You Search For?',
                preIcon: Icons.search,
                MyController: searchController,
              ),
              ),
              Expanded(
                  child: IconButton(
                icon: const Icon(Icons.shopping_cart_outlined, color: AppConstants.kPrimaryColor,size: 30,),
                onPressed: () {},
              ))
                        ],
                      ),
            )),

        SliverPadding(

          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          sliver: SliverGrid(delegate: SliverChildBuilderDelegate((context, index) {
            return const CustomProductCard();
          },
          childCount: 10
          ), gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:191,
          childAspectRatio:
          191/237,
          crossAxisSpacing: 10,mainAxisSpacing: 10)),
        )
      ],
    ));
  }
}

import 'package:case_study_1/dashboard/cubit/dashboard_cubit.dart';
import 'package:case_study_1/dashboard/modules/favorite/view/page/favorite_page.dart';
import 'package:case_study_1/dashboard/modules/product/view/page/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          DashboardCubit cubit = context.read<DashboardCubit>();
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'new_product');
                    },
                    icon: const Icon(CupertinoIcons.plus))
              ],
            ),
            body: PageView(
              controller: cubit.pageController,
              onPageChanged: cubit.onChangeTab,
              children: const [
                ProductPage(),
                FavoritePage(),
                Text('cart'),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              currentIndex: cubit.currentIndex,
              onTap: cubit.onChangeTab,
              items: [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.collections), label: 'product'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: 'favorite'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: 'cart')
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:slashtask/constants.dart';
import 'package:slashtask/features/home/presentation/view_models/products_cubit/products_cubit.dart';
import 'package:slashtask/features/home/presentation/view_models/scroll_offers/scroll_offers_cubit.dart';
import 'package:slashtask/features/home/presentation/views/slash_home_view_desktop.dart';
import 'package:slashtask/features/home/presentation/views/slash_home_view_mobile.dart';
import 'package:slashtask/features/home/presentation/views/slash_home_view_tablet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit>(
          create: (context) => ProductsCubit()..getProducts(),
        ),
        BlocProvider<ScrollOffersCubit>(
          create: (context) =>
              ScrollOffersCubit(0), 
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Slash Home View',
        home: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth <= mobTabBreakPoint) {
            return const SlashHomeViewMobile();
          } else if (constraints.maxWidth <= tabDeskBreakPoint) {
            return const Scaffold(
              body: SlashHomeViewTablet(),
            );
          } else {
            return const Scaffold(
              body: SlashHomeViewDesktop(),
            );
          }
        }),
      ),
    );
  }
}

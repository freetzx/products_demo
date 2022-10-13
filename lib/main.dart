import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/logic/cubit/product_cart/product_cart_cubit.dart';
import 'package:products_demo/presentation/routes/app_router.dart';
import 'package:products_demo/presentation/screens/product_list/product_list.dart';

import 'logic/debug/bloc_observer.dart';
import 'data/http/service_api.dart';
import 'data/repositories/product_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => ServiceApi()),
        RepositoryProvider(
          create: (context) => ProductRepository(
            api: context.read<ServiceApi>(),
          ),
        ),
      ],
      child: BlocProvider(
        create: (context) => ProductCartCubit(),
        child: MaterialApp(
          title: 'Products Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey.shade900,
              titleTextStyle: const TextStyle(color: Colors.white),
              centerTitle: true,
            ),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: ProductListScreen.routeName,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/core/theme/app_theme.dart';
import 'package:shopper_app/features/auth/bloc/auth_bloc.dart';
import 'package:shopper_app/features/auth/presentation/pages/login_page.dart';
import 'package:shopper_app/features/cart/bloc/cart_bloc.dart';
import 'package:shopper_app/features/wishlist/bloc/wishlist_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => CartBloc()),
        BlocProvider(create: (context) => WishlistBloc()),
      ],
      child: MaterialApp(
        title: 'Shopper App',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
      ),
    );
  }
}

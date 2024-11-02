import 'package:earning_tracker/core/theme/theme.dart';
import 'package:earning_tracker/earning_tracker/data/repositories/earning_repository_impl.dart';
import 'package:earning_tracker/earning_tracker/presentation/bloc/earnings_bloc.dart';
import 'package:earning_tracker/earning_tracker/presentation/screens/earnings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: BlocProvider(
        create: (context) => EarningsBloc(EarningsRepositoryImpl()),
        child: EarningsScreen(),
      ),
    );
  }
}

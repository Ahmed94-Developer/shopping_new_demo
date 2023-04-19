
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_new/app_router.dart';
import 'package:shopping_new/business_logic/auth_cubit/login_cubit.dart';
import 'package:shopping_new/constants/strings.dart';
import 'package:shopping_new/data/repositories/auth_repository.dart';
import 'package:shopping_new/data/repositories/partitions_repository.dart';
import 'package:shopping_new/presentation/widgets/screens/home_screen.dart';
import 'package:shopping_new/presentation/widgets/screens/login_screen.dart';

import 'business_logic/cubit/partitions_cubit.dart';

class AppRouter{
  late PartitionsRepository partitionsRepository;
  late PartitionsCubit partitionsCubit;
  late AuthRepository authRepository;
  Route? generateRoutes(RouteSettings settings){
    switch(settings.name){
      case homeScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider<PartitionsCubit>(
          create: (context) => PartitionsCubit(partitionsRepository: PartitionsRepository()),
          child: HomeScreen(),
        ),
        );
      case loginScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(authRepository: AuthRepository()),
          child: LoginScreen(),
        ),
        );
    }

  }
}
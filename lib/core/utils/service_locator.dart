import 'package:bookstore/core/utils/api_service.dart';
import 'package:bookstore/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  if (!getIt.isRegistered<ApiService>()) {
    getIt.registerSingleton<ApiService>(ApiService(Dio()));
  }

  if (!getIt.isRegistered<HomeRepoImpl>()) {
    getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: getIt.get<ApiService>()),
    );
  }
}

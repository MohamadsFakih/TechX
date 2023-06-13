import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/di/injection_container.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configContainer() => getIt.init();

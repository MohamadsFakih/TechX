// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:techx/features/cart/data/remote/service/cart_service.dart'
    as _i3;
import 'package:techx/features/cart/data/remote/source/cart_source.dart' as _i5;
import 'package:techx/features/cart/data/remote/source/cart_source_impl.dart'
    as _i6;
import 'package:techx/features/cart/data/repository/cart_repository_impl.dart'
    as _i33;
import 'package:techx/features/cart/domain/repository/cart_repository.dart'
    as _i32;
import 'package:techx/features/cart/domain/usecase/cart_usecase.dart' as _i34;
import 'package:techx/features/cart/presentation/bloc/cart_bloc.dart' as _i55;
import 'package:techx/features/categories/data/remote/service/item_service.dart'
    as _i23;
import 'package:techx/features/categories/data/remote/source/item_source.dart'
    as _i24;
import 'package:techx/features/categories/data/remote/source/item_srouce_impl.dart'
    as _i25;
import 'package:techx/features/categories/data/repository/item_repository_impl.dart'
    as _i46;
import 'package:techx/features/categories/domain/repository/item_repository.dart'
    as _i45;
import 'package:techx/features/categories/domain/usecase/item_usecase.dart'
    as _i47;
import 'package:techx/features/categories/presentation/bloc/category_bloc.dart'
    as _i56;
import 'package:techx/features/common/data/remote/service/user_service.dart'
    as _i29;
import 'package:techx/features/common/data/remote/source/user_source.dart'
    as _i30;
import 'package:techx/features/common/data/remote/source/user_source_impl.dart'
    as _i31;
import 'package:techx/features/common/data/repository/user_repository_impl.dart'
    as _i53;
import 'package:techx/features/common/domain/repository/user_repository.dart'
    as _i52;
import 'package:techx/features/common/domain/usecase/user_usecase.dart' as _i54;
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart'
    as _i61;
import 'package:techx/features/detailed/data/remote/service/detailed_local_service.dart'
    as _i10;
import 'package:techx/features/detailed/data/remote/source/detailed_local_source.dart'
    as _i11;
import 'package:techx/features/detailed/data/remote/source/detailed_local_source_impl.dart'
    as _i12;
import 'package:techx/features/detailed/data/repository/detailed_repository_impl.dart'
    as _i14;
import 'package:techx/features/detailed/domain/repository/detailed_repository.dart'
    as _i13;
import 'package:techx/features/detailed/domain/usecases/detailed_usecase.dart'
    as _i15;
import 'package:techx/features/detailed/presentation/bloc/detailed_bloc.dart'
    as _i38;
import 'package:techx/features/favorite/presentation/bloc/favorite_bloc.dart'
    as _i57;
import 'package:techx/features/home/data/remote/service/home_service.dart'
    as _i16;
import 'package:techx/features/home/data/remote/source/home_source.dart'
    as _i17;
import 'package:techx/features/home/data/remote/source/home_source_imp.dart'
    as _i18;
import 'package:techx/features/home/data/repository/home_repository_impl.dart'
    as _i40;
import 'package:techx/features/home/domain/repository/home_repository.dart'
    as _i39;
import 'package:techx/features/home/domain/usecases/home_usecase.dart' as _i41;
import 'package:techx/features/home/presentation/bloc/home_bloc.dart' as _i58;
import 'package:techx/features/login/data/remote/service/login_service.dart'
    as _i19;
import 'package:techx/features/login/data/remote/source/login_source.dart'
    as _i21;
import 'package:techx/features/login/data/remote/source/login_source_impl.dart'
    as _i22;
import 'package:techx/features/login/data/repository/login_repository_impl.dart'
    as _i43;
import 'package:techx/features/login/domain/repository/login_repository.dart'
    as _i42;
import 'package:techx/features/login/domain/usecase/login_usecase.dart' as _i44;
import 'package:techx/features/login/presentation/bloc/login_bloc.dart' as _i59;
import 'package:techx/features/register/data/remote/service/register_service.dart'
    as _i26;
import 'package:techx/features/register/data/remote/source/register_source.dart'
    as _i27;
import 'package:techx/features/register/data/remote/source/register_source_impl.dart'
    as _i28;
import 'package:techx/features/register/data/repository/register_repository_impl.dart'
    as _i49;
import 'package:techx/features/register/domain/repository/register_repository.dart'
    as _i48;
import 'package:techx/features/register/domain/usecase/register_usecase.dart'
    as _i50;
import 'package:techx/features/register/presentation/bloc/register_bloc.dart'
    as _i60;
import 'package:techx/features/settings/data/local/service/credit_service.dart'
    as _i7;
import 'package:techx/features/settings/data/local/source/credit_source.dart'
    as _i8;
import 'package:techx/features/settings/data/local/source/credit_source_impl.dart'
    as _i9;
import 'package:techx/features/settings/data/repository/credit_repository_impl.dart'
    as _i36;
import 'package:techx/features/settings/domain/repository/credit_repository.dart'
    as _i35;
import 'package:techx/features/settings/domain/usecase/credit_usecase.dart'
    as _i37;
import 'package:techx/features/settings/presentation/bloc/settings_bloc.dart'
    as _i51;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.CartService>(
        () => _i3.CartService(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i5.CartSource>(() => _i6.CartSourceImpl(gh<_i3.CartService>()));
    gh.factory<_i7.CreditService>(() => _i7.CreditService());
    gh.factory<_i8.CreditSource>(
        () => _i9.CreditSourceImpl(gh<_i7.CreditService>()));
    gh.factory<_i10.DetailedLocalService>(
        () => _i10.DetailedLocalService(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i11.DetailedLocalSource>(
        () => _i12.DetailedLocalSourceImpl(gh<_i10.DetailedLocalService>()));
    gh.factory<_i13.DetailedRepository>(
        () => _i14.DetailedRepositoryImpl(gh<_i11.DetailedLocalSource>()));
    gh.factory<_i15.DetailedUseCase>(
        () => _i15.DetailedUseCase(gh<_i13.DetailedRepository>()));
    gh.factory<_i16.HomeService>(
        () => _i16.HomeService(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i17.HomeSource>(
        () => _i18.HomeSourceImpl(gh<_i16.HomeService>()));
    gh.factory<_i19.LoginService>(
        () => _i19.LoginService(gh<_i20.FirebaseAuth>()));
    gh.factory<_i21.LoginSource>(
        () => _i22.LoginSourceImpl(gh<_i19.LoginService>()));
    gh.factory<_i23.MiniItemService>(
        () => _i23.MiniItemService(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i24.MiniItemSource>(
        () => _i25.MiniItemSourceImp(gh<_i23.MiniItemService>()));
    gh.factory<_i26.RegisterService>(() => _i26.RegisterService(
          gh<_i20.FirebaseAuth>(),
          gh<_i4.FirebaseFirestore>(),
        ));
    gh.factory<_i27.RegisterSource>(
        () => _i28.RegisterSourceImpl(gh<_i26.RegisterService>()));
    gh.factory<_i29.UserService>(() => _i29.UserService(
          gh<_i20.FirebaseAuth>(),
          gh<_i4.FirebaseFirestore>(),
        ));
    gh.factory<_i30.UserSource>(
        () => _i31.UserSourceImpl(gh<_i29.UserService>()));
    gh.factory<_i32.CartRepository>(
        () => _i33.CartRepositoryImpl(gh<_i5.CartSource>()));
    gh.factory<_i34.CartUseCase>(
        () => _i34.CartUseCase(gh<_i32.CartRepository>()));
    gh.factory<_i35.CreditRepository>(
        () => _i36.CreditRepositoryImpl(gh<_i8.CreditSource>()));
    gh.factory<_i37.CreditUseCase>(
        () => _i37.CreditUseCase(gh<_i35.CreditRepository>()));
    gh.factory<_i38.DetailedBloc>(
        () => _i38.DetailedBloc(gh<_i15.DetailedUseCase>()));
    gh.factory<_i39.HomeRepository>(
        () => _i40.HomeRepositoryImpl(gh<_i17.HomeSource>()));
    gh.factory<_i41.HomeUseCase>(
        () => _i41.HomeUseCase(gh<_i39.HomeRepository>()));
    gh.factory<_i42.LoginRepository>(
        () => _i43.LoginRepositoryImpl(gh<_i21.LoginSource>()));
    gh.factory<_i44.LoginUseCase>(
        () => _i44.LoginUseCase(gh<_i42.LoginRepository>()));
    gh.factory<_i45.MiniItemRepository>(
        () => _i46.MiniItemRepositoryImpl(gh<_i24.MiniItemSource>()));
    gh.factory<_i47.MiniItemUseCase>(
        () => _i47.MiniItemUseCase(gh<_i45.MiniItemRepository>()));
    gh.factory<_i48.RegisterRepository>(
        () => _i49.RegisterRepositoryImpl(gh<_i27.RegisterSource>()));
    gh.factory<_i50.RegisterUseCase>(
        () => _i50.RegisterUseCase(gh<_i48.RegisterRepository>()));
    gh.factory<_i51.SettingsBloc>(
        () => _i51.SettingsBloc(gh<_i37.CreditUseCase>()));
    gh.factory<_i52.UserRepository>(
        () => _i53.UserRepositoryImpl(gh<_i30.UserSource>()));
    gh.factory<_i54.UserUseCase>(
        () => _i54.UserUseCase(gh<_i52.UserRepository>()));
    gh.factory<_i55.CartBloc>(() => _i55.CartBloc(gh<_i34.CartUseCase>()));
    gh.factory<_i56.CategoryBloc>(
        () => _i56.CategoryBloc(gh<_i47.MiniItemUseCase>()));
    gh.factory<_i57.FavoriteBloc>(
        () => _i57.FavoriteBloc(gh<_i47.MiniItemUseCase>()));
    gh.factory<_i58.HomeBloc>(() => _i58.HomeBloc(gh<_i41.HomeUseCase>()));
    gh.factory<_i59.LoginBloc>(() => _i59.LoginBloc(gh<_i44.LoginUseCase>()));
    gh.factory<_i60.RegisterBloc>(
        () => _i60.RegisterBloc(gh<_i50.RegisterUseCase>()));
    gh.factory<_i61.UserBloc>(() => _i61.UserBloc(gh<_i54.UserUseCase>()));
    return this;
  }
}

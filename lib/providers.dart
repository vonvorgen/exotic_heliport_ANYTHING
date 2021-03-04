import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gifter/home/cubit/api.dart';
import 'package:gifter/home/cubit/home_cubit.dart';
import 'package:gifter/onboarding/cubit/login_cubit.dart';
import 'package:gifter/session/session_cubit.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

final secureStorageProvider = Provider((_) => const FlutterSecureStorage());
final sessionCubitProvider = Provider(
  (ref) => SessionCubit(ref.read(secureStorageProvider)),
);
final loginCubitProvider = Provider(
  (ref) => LoginCubit(sessionCubit: ref.read(sessionCubitProvider)),
);
final apiProvider = Provider((_) => GiftsApi());
final imageCacheManagerProvider = Provider(
  (_) => DefaultCacheManager() as BaseCacheManager,
);
final homeCubitProvider = Provider(
  (ref) => HomeCubit(api: ref.read(apiProvider)),
);

// Provider is a transative depdencecy of bloc and also includeds a context.read,
// We need a way wrap the Riverpods extension function, hence this proxy function.
extension BuildContextX on BuildContext {
  T readPod<T>(ProviderBase<Object, T> provider) {
    return ProviderScope.containerOf(this, listen: false).read(provider);
  }
}

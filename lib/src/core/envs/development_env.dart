import 'package:envied/envied.dart';
import '../base/env.dart';
import '../constants/env_keys.dart';

part 'development_env.g.dart';

@Envied(name: EnvKeys.devEnv, path: EnvKeys.devEnvPath)
class DevelopmentEnv extends EnvVars {
  @override
  @EnviedField(varName: EnvKeys.baseUrlKey, obfuscate: false, interpolate: false)
  String baseUrl = _DevelopmentEnv.baseUrl;
}

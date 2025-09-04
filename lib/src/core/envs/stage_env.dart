import 'package:envied/envied.dart';
import '../base/env.dart';
import '../constants/env_keys.dart';

part 'stage_env.g.dart';

@Envied(name: EnvKeys.stageEnv, path: EnvKeys.stageEnvPath)
class StageEnv extends EnvVars {

  @override
  @EnviedField(varName: EnvKeys.baseUrlKey, obfuscate: true)
  String baseUrl = _StageEnv.baseUrl;
}

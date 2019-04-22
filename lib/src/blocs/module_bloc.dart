import 'package:mcq_checker/src/resources/database_provider.dart';
import 'package:rxdart/rxdart.dart';
import '../models/module.dart';
import '../resources/db_provider.dart';

class ModuleBloc {
  final _dbProvider = DatabaseProvider();

  // Controller for modules
  final PublishSubject<List<Module>> _modules = PublishSubject();
  // Controller for modules
  //final PublishSubject<Module> _module = PublishSubject();

  // Getters to stream
  // Get all modules
  Observable<List<Module>> get modules => _modules.stream;

  // Getters to sink
  // Add module
  //Function(Module) get addModule => _module.sink.add();

  Future fetchAllModule() async {
    final List<Module> moduleList = await _dbProvider.fetchAllModule();
    _modules.sink.add(moduleList);
  }

  Future<int> addModule(Module module) async {
    return await _dbProvider.addModule(module);
  }

  // Clear db
  clear() {
    return _dbProvider.clear();
  }

  dispose() {
    _modules.close();
    //_module.close();
  }
}

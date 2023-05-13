import 'package:progress_manager/progress_manager.dart';

abstract class LoaderManager {
  void loaderIncrease() {
    LoaderProvider().increment();
  }

  void loaderDecrease() {
    LoaderProvider().decrement();
  }
}

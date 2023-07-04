import 'dart:async';
import 'dart:ui';

class Debouncer {
  Debouncer(this.milliseconds);

  final int milliseconds;
  Timer? _timer;

  void run(VoidCallback action) {
    if (!(_timer?.isActive ?? false)) {
      _timer = Timer(Duration(milliseconds: milliseconds), dispose);
      action();
    }
  }

  void dispose() {
    _timer?.cancel();
  }
}

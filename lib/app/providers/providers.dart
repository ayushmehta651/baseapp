import 'package:baseapp/core/notifiers/cache.notifier.dart';
import 'package:baseapp/core/notifiers/counter.notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CacheNotifier()),
  ChangeNotifierProvider(create: (_) => CounterNotifier())
];

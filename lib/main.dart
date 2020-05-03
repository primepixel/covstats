import 'package:covstats/provider_setup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constants/route_paths.dart';
import 'features/router.dart';

void main() => runApp(Covstats());

class Covstats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Covstats',
        theme: ThemeData(primarySwatch: Colors.red),
        initialRoute: RoutePaths.Home,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}

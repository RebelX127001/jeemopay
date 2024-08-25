import 'package:jeemo_pay/core/repositories/user_repository.dart';
import 'package:jeemo_pay/services/theme_provider.dart';
import 'package:jeemo_pay/ui/features/collect_payment/payment_repository.dart';
import 'package:jeemo_pay/ui/features/login/login_repository.dart';
import 'package:jeemo_pay/ui/features/signup/signup_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  //The providers for dependency injection and state management are to added here
  //as the app will use MultiProvider
  static final providers = <SingleChildWidget>[
    //format for registering providers:
    ListenableProvider(create: (_) => UserProvider()),
    ListenableProvider(create: (_) => ThemeProvider(true)),
    ListenableProvider(create: (_) => LoginProvider()),
    ListenableProvider(create: (_) => SignUpProvider()),
    ListenableProvider(create: (_) => PaymentProvider()),
  ];
}

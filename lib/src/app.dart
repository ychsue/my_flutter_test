// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:test2/src/route/cubit/my_page.dart';
// import 'package:test2/src/route/cubit/pages_retriever_cubit.dart';
// import 'package:test2/src/route/parser_and_delegate/my_route_delegate.dart';
// import 'package:test2/src/route/parser_and_delegate/route_parser.dart';

import 'package:get/get.dart';
import 'core/theme/app_theme.dart';
import 'route/app_pages.dart';

app() => GetMaterialApp(
      title: "My Test of Flutter",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home.toLocation,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      // initialBinding: SplashBinding(),
      getPages: AppPages.pages,
      // showSemanticsDebugger: true,
      // home: HomeScreen(),
    );

// class App extends StatelessWidget {
//   App({Key? key}) : super(key: key);
//   final PagesRetrieverCubit pagesRetriever = PagesRetrieverCubit();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) {
//         return pagesRetriever;
//       },
//       child: MaterialApp.router(
//           title: 'A test',
//           routeInformationParser: RouteParser(),
//           routerDelegate: MyRouteDelegate(pagesRetriever: pagesRetriever)),
//     );
//   }
// }

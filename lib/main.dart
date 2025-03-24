import 'utils/app_exports.dart';

void main() async {
  RenderErrorBox.backgroundColor = Colors.black26;
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const TaskFlow());
}

class TaskFlow extends StatefulWidget {
  const TaskFlow({super.key});

  @override
  State<TaskFlow> createState() => _TaskFlowState();
}

class _TaskFlowState extends State<TaskFlow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: CustomFonts.FacultyGlyphic,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlueAccent,
        ),
        useMaterial3: false,
        typography: Typography.material2021(),
      ),
      title: StaticStrings.appName,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteNames.splash,
      navigatorKey: NavigatorService.navigatorKey,
    );
  }
}

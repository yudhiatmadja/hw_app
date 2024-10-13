import 'package:get/get.dart';
import 'package:hwapp/app/modules/Absen/bindings/absen_binding.dart';
import 'package:hwapp/app/modules/Scoreboard/bindings/scoreboard_bindings.dart';
import 'package:hwapp/app/modules/Scoreboard/views/scoreboard_view.dart';
import 'package:hwapp/app/modules/absen/views/absen_view.dart';
import 'package:hwapp/app/modules/admin_absen/bindings/admin_absen_binding.dart';
import 'package:hwapp/app/modules/admin_absen/views/admin_absen_view.dart';
import 'package:hwapp/app/modules/calender/bindings/calender_binding.dart';
import 'package:hwapp/app/modules/calender/views/calender_view.dart';
import 'package:hwapp/app/modules/kegiatan_admin/bindings/addkegiatan_binding.dart';
import 'package:hwapp/app/modules/kegiatan_admin/views/addkegiatan_view.dart';
import 'package:hwapp/app/modules/schedule/bindings/schedule_binding.dart';
import 'package:hwapp/app/modules/schedule/views/schedule_view.dart';
import 'package:hwapp/app/modules/struktur/bindings/struktur_binding.dart';
import 'package:hwapp/app/modules/struktur/views/struktur_view.dart';
import 'package:hwapp/app/modules/user_modul/bindings/bacamodul_binding.dart';
import 'package:hwapp/app/modules/user_modul/bindings/modul_binding.dart';
import 'package:hwapp/app/modules/user_modul/views/baca_modul.dart';
import 'package:hwapp/app/modules/user_modul/views/modul_view.dart';

import '../modules/modulpage/bindings/module_binding.dart';
import '../modules/modulpage/views/add_module_view.dart';
import '../modules/login/bindings/login_bindings.dart';
import '../modules/login/views/login_view.dart';
import '../modules/registrasi/bindings/registrasi_binding.dart';
import '../modules/registrasi/views/registrasi_view.dart';
import '../modules/Quiz/bindings/quiz_binding.dart';
import '../modules/Quiz/views/quiz_view.dart';
import '../modules/notifRegistrasi/bindings/notif_registrasi_binding.dart';
import '../modules/notifRegistrasi/views/notif_registrasi_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/UserDashboard/bindings/user_binding.dart';
import '../modules/UserDashboard/views/user_view.dart';
import '../modules/AdminHome/bindings/admin_binding.dart';
import '../modules/AdminHome/views/admin_view.dart';
import '../modules/statistik/bindings/statistik_binding.dart';
import '../modules/statistik/views/statistik_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.MODULE,
      page: () => ModuleAdd(),
      binding: ModuleBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRASI,
      page: () => RegistrasiView(),
      binding: RegistrasiBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ,
      page: () => const QuizView(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.NOTIF_REGISTRASI,
      page: () => const NotifRegistrasiView(),
      binding: NotifRegistrasiBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE_A,
      page: () => const HomepageAView(),
      binding: HomepageABinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE_U,
      page: () => const HomepageUView(),
      binding: HomepageUBinding(),
    ),
    GetPage(
      name: _Paths.STATISTIK,
      page: () => const StatistikView(),
      binding: StatistikBinding(),
    ),
    GetPage(
      name: _Paths.CALENDER,
      page: () => const CalenderView(),
      binding: CalenderBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => ScheduleView(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: _Paths.SCOREBOARD,
      page: () => const ScoreboardPage(),
      binding: ScoreboardBindings(),
    ),
    GetPage(
      name: _Paths.ABSEN,
      page: () => const AbsensiPage(),
      binding: AbsenBinding(),
    ),
    GetPage(
      name: _Paths.USERMODUL,
      page: () => ModulScreen(),
      binding: ModulBinding(),
    ),
    GetPage(
      name: _Paths.BACAMODUL,
      page: () => BacaModulScreen(),
      binding: BacaModulBinding(),
    ),
    GetPage(
      name: _Paths.ABSENADMIN,
      page: () => AbsenAdminPage(),
      binding: AdminAbsenBinding(),
    ),
    GetPage(
      name: _Paths.STRUKTUR,
      page: () => StrukturScreen(),
      binding: StrukturBinding(),
    ),
    GetPage(
      name: _Paths.ADDKEGIATAN,
      page: () => AddEventPage(),
      binding: AddkegiatanBinding(),
    ),
  ];
}

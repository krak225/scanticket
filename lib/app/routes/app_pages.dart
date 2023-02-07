import 'package:job_boarder/app/ui/layouts/main/main_page.dart';
import 'package:job_boarder/app/ui/pages/profil_details_page/profil_details_page.dart';

import '../bindings/details_offre_binding.dart';
import '../bindings/documents_binding.dart';
import '../bindings/main_binding.dart';
import '../bindings/offre_binding.dart';
import '../bindings/photo_update_binding.dart';
import '../bindings/profil_details_binding.dart';
import '../bindings/profil_update_binding.dart';
import '../ui/pages/details_offre_page/details_offre_page.dart';
import '../ui/pages/documents_page/documents_page.dart';
import '../ui/pages/offre_page/offre_page.dart';
import '../ui/pages/photo_update_page/photo_update_page.dart';
import '../ui/pages/profil_update_page/profil_update_page.dart';
import '../bindings/profil_binding.dart';
import '../ui/pages/profil_page/profil_page.dart';
import '../bindings/job_binding.dart';
import '../ui/pages/job_page/job_page.dart';
import '../bindings/search_binding.dart';
import '../ui/pages/search_page/search_page.dart';
import '../bindings/register_otp_binding.dart';
import '../ui/pages/register_otp_page/register_otp_page.dart';
import '../bindings/register_profil_binding.dart';
import '../ui/pages/register_profil_page/register_profil_page.dart';
import '../bindings/register_demande_binding.dart';
import '../ui/pages/register_demande_page/register_demande_page.dart';
import '../bindings/register_init_binding.dart';
import '../ui/pages/register_init_page/register_init_page.dart';
import '../bindings/login_binding.dart';
import '../ui/pages/login_page/login_page.dart';
import '../bindings/onboarding_binding.dart';
import '../ui/pages/onboarding_page/onboarding_page.dart';
import '../bindings/start_binding.dart';
import '../ui/pages/start_page/start_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../ui/pages/unknown_route_page/unknown_route_page.dart';
import 'app_routes.dart';

final _defaultTransition = Transition.native;

class AppPages {
  static final unknownRoutePage = GetPage(
    name: AppRoutes.UNKNOWN,
    page: () => UnknownRoutePage(),
    transition: _defaultTransition,
  );

  static final List<GetPage> pages = [
    unknownRoutePage,
    GetPage(
      name: AppRoutes.HOME,
      page: () => MainPage(),
      binding: MainBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.START,
      page: () => StartPage(),
      binding: StartBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.ONBOARDING,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.REGISTER_INIT,
      page: () => RegisterInitPage(),
      binding: RegisterInitBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.REGISTER_DEMANDE,
      page: () => RegisterDemandePage(),
      binding: RegisterDemandeBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.REGISTER_PROFIL,
      page: () => RegisterProfilPage(),
      binding: RegisterProfilBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.REGISTER_OTP,
      page: () => RegisterOtpPage(),
      binding: RegisterOtpBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.MES_DOCUMENTS,
      page: () => DocumentsPage(),
      binding: DocumentsBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.MES_PHOTOS,
      page: () => PhotoUpdatePage(),
      binding: PhotoUpdateBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.SEARCH,
      page: () => SearchPage(),
      binding: SearchBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.OFFRES,
      page: () => OffrePage(1, "Offres selon mon profil"),
      binding: OffreBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.DETAILS_OFFRE,
      page: () => DetailsOffrePage(),
      binding: DetailsOffreBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.COMMENT,
      page: () => JobPage(1, "Offres selon mon profil"),
      binding: CommentBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.PROFIL,
      page: () => ProfilPage(),
      binding: ProfilBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.PROFIL_UPDATE,
      page: () => ProfilUpdatePage(),
      binding: ProfilUpdateBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.PROFIL_DETAILS,
      page: () => ProfilDetailsPage(),
      binding: ProfilDetailsBinding(),
      transition: _defaultTransition,
    ),
];
}
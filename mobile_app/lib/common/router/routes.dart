class RouteInfo {
  final String name;
  final String path;
  final Map<String, String>? defaultParams;

  static final RouteInfo splash = RouteInfo(
    path: '/splash',
    name: 'splash',
  );

  static final RouteInfo home = RouteInfo(
    path: r'/:index(\d+)',
    name: 'home',
  );

  static final RouteInfo main = RouteInfo(
    path: '',
    name: 'home',
    defaultParams: {'index': '1'},
  );

  static final RouteInfo chat = RouteInfo(
    path: '',
    name: 'home',
    defaultParams: {'index': '0'},
  );

  static final RouteInfo onboardingPage = RouteInfo(
    path: '/onboardingPage',
    name: 'onboardingPage',
  );
  static final RouteInfo loginPage = RouteInfo(
    path: '/loginPage',
    name: 'loginPage',
  );
  static final RouteInfo serviceDetails = RouteInfo(
    path: 'serviceDetails',
    name: 'serviceDetails',
    defaultParams: {'index': '0'},
  );

  static final RouteInfo registerUserPage = RouteInfo(
    path: 'registerUserPage',
    name: 'registerUserPage',
    defaultParams: {'index': '0'},
  );

  RouteInfo({
    required this.name,
    required this.path,
    this.defaultParams,
  });

  Map<String, String> getParams({Map<String, String>? extraParams}) {
    return defaultParams != null ? {...defaultParams!, ...extraParams ?? {}} : extraParams ?? {};
  }
}

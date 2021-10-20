part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: HOME, route: HOME_SCREEN),
    NavItemData(name: ABOUT, route: ABOUT_PAGE),
    NavItemData(name: WORKS, route: WORKS_PAGE),
    NavItemData(
      name: EXPERIENCE,
      route: EXPERIENCE_PAGE,
    ),
    NavItemData(name: CONTACT, route: CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: GITHUB,
      iconData: FontAwesomeIcons.github,
      url: GITHUB_URL,
    ),
    SocialData(
      name: LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: LINKED_IN_URL,
    ),
    SocialData(
      name: FACEBOOK,
      iconData: FontAwesomeIcons.twitter,
      url: FACEBOOK_URL,
    ),

  ];

  static List<String> mobileTechnologies = [
    "Android",
    "Flutter",
    "Java Android",
    "Kotlin",
    "Dart"
  ];

  static List<String> otherTechnologies = [
    "HTML 5",
    "CSS 3",
    "JavaScript",
    "Wordpress",
    "React JS",
    "Node JS",
    "Git",
    "Laravel",
    "PHP",
    "Dart",
    "SQL",
    "C++",
    "Firebase",
    "Figma",
    "Adobe XD",
  ];
  static List<SocialData> socialData1 = [
    SocialData(
      name: GITHUB,
      iconData: FontAwesomeIcons.github,
      url: GITHUB_URL,
    ),
    SocialData(
      name: LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: LINKED_IN_URL,
    ),
    SocialData(
      name: FACEBOOK,
      iconData: FontAwesomeIcons.twitter,
      url: FACEBOOK_URL,
    ),
  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: LINKED_IN_URL,
    ),
    SocialData(
      name: FACEBOOK,
      iconData: FontAwesomeIcons.twitter,
      url: FACEBOOK_URL,
    ),
    SocialData(
      name: INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: INSTAGRAM_URL,
    ),
    SocialData(
      name: TELEGRAM,
      iconData: FontAwesomeIcons.telegram,
      url: TELEGRAM_URL,
    ),
  ];

  static List<SkillData> skillData = [
    SkillData(skillLevel: 95, skillName: FLUTTER),
    SkillData(skillLevel: 70, skillName: JAVA),
    SkillData(skillLevel: 78, skillName: ANDROID),
    SkillData(skillLevel: 70, skillName: KOTLIN),
    SkillData(skillLevel: 80, skillName: JAVASCRIPT),
    SkillData(skillLevel: 80, skillName: PHP),
    SkillData(skillLevel: 80, skillName: LARAVEL),
    SkillData(skillLevel: 80, skillName: SQL),
    SkillData(skillLevel: 90, skillName: WORDPRESS),
    SkillData(skillLevel: 80, skillName: BOOTSTRAP),
    SkillData(skillLevel: 80, skillName: HTML_CSS),
  ];

  static List<ProjectItemData> recentWorks = [
    Projects.FLUTTER_CATALOG,

    Projects.ROAM,

  ];

  static List<ProjectItemData> projects = [
    Projects.FLUTTER_CATALOG,

    Projects.ROAM,

  ];

  static List<NoteWorthyProjectDetails> noteworthyProjects = [
    NoteWorthyProjectDetails(
      projectName: AMOR_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: true,
      technologyUsed: FLUTTER,
      projectDescription: AMOR_APP_DETAIL,
      gitHubUrl: AMOR_APP_GITHUB_URL,
      webUrl: AMOR_APP_WEB_URL,
      isLive: true,
    ),
    NoteWorthyProjectDetails(
      projectName: PROGRAMMING_FOR_DATA_SCIENCE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: PYTHON,
      projectDescription: PROGRAMMING_FOR_DATA_SCIENCE_DETAIL,
      gitHubUrl: PROGRAMMING_FOR_DATA_SCIENCE_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: PYTHON_ALGORITHMS,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: PYTHON,
      projectDescription: PYTHON_ALGORITHMS_DETAIL,
      gitHubUrl: PYTHON_ALGORITHMS_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: ONBOARDING_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: FLUTTER,
      projectDescription: ONBOARDING_APP_DETAIL,
      gitHubUrl: ONBOARDING_APP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: FINOPP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: FLUTTER,
      projectDescription: FINOPP_DETAIL,
      gitHubUrl: FINOPP_GITHUB_URL,
      isLive: false,
    ),
  ];

  static List<CertificationData> certificationData = [
    CertificationData(
      title: ASSOCIATE_ANDROID_DEV,
      url: ASSOCIATE_ANDROID_DEV_URL,
      image: ImagePath.ASSOCIATE_ANDROID_DEV,
      imageSize: 0.325,
      awardedBy: GOOGLE,
    ),
    CertificationData(
      title: DATA_SCIENCE,
      url: DATA_SCIENCE_CERT_URL,
      image: ImagePath.DATA_SCIENCE_CERT,
      imageSize: 0.325,
      awardedBy: UDACITY,
    ),
    CertificationData(
      title: ANDROID_BASICS,
      url: ANDROID_BASICS_CERT_URL,
      image: ImagePath.ANDROID_BASICS_CERT,
      imageSize: 0.325,
      awardedBy: UDACITY,
    ),
  ];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: COMPANY_5,
      position: POSITION_5,
      companyUrl: COMPANY_5_URL,
      roles: [
        COMPANY_5_ROLE_1,
        COMPANY_5_ROLE_2,
        COMPANY_5_ROLE_3,
      ],
      location: LOCATION_5,
      duration: DURATION_5,
    ),
    ExperienceData(
      company: COMPANY_4,
      position: POSITION_4,
      companyUrl: COMPANY_4_URL,
      roles: [
        COMPANY_4_ROLE_1,
        COMPANY_4_ROLE_2,
        COMPANY_4_ROLE_3,
        COMPANY_4_ROLE_4,
      ],
      location: LOCATION_4,
      duration: DURATION_4,
    ),
    ExperienceData(
      company: COMPANY_3,
      position: POSITION_3,
      companyUrl: COMPANY_3_URL,
      roles: [
        COMPANY_3_ROLE_1,
        COMPANY_3_ROLE_2,
        COMPANY_3_ROLE_3,
      ],
      location: LOCATION_3,
      duration: DURATION_3,
    ),
    ExperienceData(
      company: COMPANY_2,
      position: POSITION_2,
      companyUrl: COMPANY_2_URL,
      roles: [
        COMPANY_2_ROLE_1,
        COMPANY_2_ROLE_2,
        COMPANY_2_ROLE_3,
      ],
      location: LOCATION_2,
      duration: DURATION_2,
    ),
  ];
}

class Projects {
  static ProjectItemData FLUTTER_CATALOG = ProjectItemData(
    title: FLUTTER_ARCHIVE,
    subtitle: FLUTTER_ARCHIVE,
    platform: FLUTTER_CATALOG_PLATFORM,
    primaryColor: flutter_catalog,
    image: ImagePath.FLUTTER_CATALOG_COVER,
    coverUrl: ImagePath.FLUTTER_CATALOG_COVER,
    navSelectedTitleColor: flutterCatalogSelectedNavTitle,
    appLogoColor: flutterCatalogAppLogo,
    projectAssets: [
      ImagePath.FLUTTER_CATALOG_SCREENS,
      ImagePath.FLUTTER_CATALOG_1,
      ImagePath.FLUTTER_CATALOG_2,
      ImagePath.FLUTTER_CATALOG_3,
      ImagePath.FLUTTER_CATALOG_4,
      ImagePath.FLUTTER_CATALOG_5,
    ],
    category: FLUTTER_CATALOG_CATEGORY,
    portfolioDescription: FLUTTER_CATALOG_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: FLUTTER,
    gitHubUrl: FLUTTER_CATALOG_GITHUB_URL,
    playStoreUrl: FLUTTER_CATALOG_PLAYSTORE_URL,
  );

  static ProjectItemData ROAM = ProjectItemData(
    title: Pro1,
    subtitle: Pro1,
    primaryColor: roam,
    category: ROAM_CATEGORY,
    designer: ROAM_DESIGNER,
    platform: ROAM_PLATFORM,
    image: ImagePath.ROAM_COVER,
    coverUrl: ImagePath.ROAM_COVER,
    navTitleColor: roamNavTitle,
    navSelectedTitleColor: roamSelectedNavTitle,
    appLogoColor: roamAppLogo,
    projectAssets: [
      ImagePath.ROAM_OVERALL,
      ImagePath.ROAM_ONBOARDING,
      ImagePath.ROAM_HOME,
      ImagePath.ROAM_EXPLORE,
      ImagePath.ROAM_PROFILE,
      ImagePath.ROAM_FLOW_CHART,
      ImagePath.ROAM_WIREFRAMES_1,
      ImagePath.ROAM_WIREFRAMES_2,
      ImagePath.ROAM_WIREFRAMES_3,
    ],
    portfolioDescription: ROAM_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: FLUTTER,
    gitHubUrl: ROAM_GITHUB_URL,
    playStoreUrl: ROAM_PLAYSTORE_URL,
  );

}

import 'package:redrodrigo/pages/projects_page/entity/project_entity.dart';
import 'package:redrodrigo/shared/enums.dart';

List<ProjectEntity> listOfProjects = [
  ProjectEntity(
    title: 'Portfolio Website',
    projectDescription:
        'Meu portfólio pessoal. Eu o construí usando  Flutter e gostei de trabalhar em várias coisas novas enquanto trabalhava nele',
    id: 'rodrigo-portfolio',
    techStackUsed: [
      TechStack.flutter,
      TechStack.dart,
    ],
    githubLink: 'https://github.com/tecrodrigocastro/redrodrigo',
    highlights: [
      'VSCode like theme',
      'BLoc/Cubit state management',
      'Used freezed + build_runner',
      'Snack Game',
    ],
    thumbnail: 'assets/images/project.png',
    liveProjectLink: 'https://tecrodrigocastro.github.io/#/',
  ),
  ProjectEntity(
    title: 'Website Orbe Telecom ',
    projectDescription: 'Reformulei o site da empresa usando Flutter para web',
    id: 'orbe-website',
    techStackUsed: [
      TechStack.flutter,
      TechStack.dart,
    ],
    //githubLink: 'https://github.com/tecrodrigocastro/redrodrigo',
    highlights: [
      'MapBox',
      'SliverList',
      'Used freezed + build_runner',
    ],
    thumbnail: 'assets/images/orbe.png',
    liveProjectLink: 'https://orbetelecom.com.br/#/',
  ),
  ProjectEntity(
    title: 'EM BREVE',
    projectDescription: 'Irei atualizar com todos os meus projetos',
    id: 'rodrigo-portfolio',
    techStackUsed: [
      TechStack.php,
      TechStack.bootstrap,
      TechStack.mysql,
      TechStack.laravel
    ],
    githubLink: 'https://github.com/tecrodrigocastro/',
    highlights: [],
    thumbnail: 'assets/images/breve.jpg',
  ),
  ProjectEntity(
    title: 'EM BREVE',
    projectDescription: 'Irei atualizar com todos os meus projetos',
    id: 'rodrigo-portfolio',
    techStackUsed: [
      TechStack.php,
      TechStack.bootstrap,
      TechStack.mysql,
    ],
    githubLink: 'https://github.com/tecrodrigocastro/',
    highlights: [],
    thumbnail: 'assets/images/breve.jpg',
  ),
];

import 'package:ps_flutter_final/models/bootcamp_model.dart';
import 'database.dart';

class BootcampRepository {
  Future<List<BootcampModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<BootcampModel> bootcamps = new List<BootcampModel>();

    if (db.created) {
      bootcamps = new List<BootcampModel>();
      bootcamps.add(
        new BootcampModel(
          empresa: 'Udemy',
          nome: 'Bootcamp Flutter',
          nivel: 'Avançado',
          carga: '60 Horas',
          data: '01/08/2021',
          link: 'https://www.udemy.com/course/flutter-bootcamp-with-dart/',
          conteudo:
              'Flutter é um kit de desenvolvimento de interface de usuário, de código aberto, criado pelo Google, que possibilita a criação de aplicativos compilados nativamente. Atualmente pode compilar para Android, iOS, Windows, Mac, Linux, Google Fuchsia e Web.',
        ),
      );
      bootcamps.add(
        BootcampModel(
          empresa: 'Udemy',
          nome: 'Bootcamp Kotlin',
          nivel: 'Básico',
          carga: '10 Horas',
          data: '20/06/2021',
          link:
              'https://www.udemy.com/course/the-android-development-bootcamp-2019/',
          conteudo:
              'Kotlin é uma Linguagem de programação multiplataforma, orientada a objetos e funcional, concisa e estaticamente tipada, desenvolvida pela JetBrains em 2011, que compila para a Máquina virtual Java e que também pode ser traduzida para a linguagem JavaScript e compilada para código nativo.',
        ),
      );
      bootcamps.add(
        BootcampModel(
          empresa: 'Udemy',
          nome: 'Bootcamp Java',
          nivel: 'Intermediário',
          carga: '30 Horas',
          data: '05/07/2021',
          link:
              'https://www.udemy.com/course/java-programming-become-complete-java-developer/',
          conteudo:
              'Java é uma linguagem de programação orientada a objetos desenvolvida na década de 90 por uma equipe de programadores chefiada por James Gosling, na empresa Sun Microsystems. Em 2008 o Java foi adquirido pela empresa Oracle Corporation.',
        ),
      );
      bootcamps.add(
        BootcampModel(
          empresa: 'Udemy',
          nome: 'Bootcamp C#',
          nivel: 'Básico',
          carga: '10 Horas',
          data: '20/06/2021',
          link:
              'https://www.udemy.com/course/c-programming-step-by-step-made-easy-for-beginners/',
          conteudo:
              'C# é uma linguagem de programação, multiparadigma, de tipagem forte, desenvolvida pela Microsoft como parte da plataforma .NET. A sua sintaxe orientada a objetos foi baseada no C++ mas inclui muitas influências de outras linguagens de programação, como Object Pascal e, principalmente, Java.',
        ),
      );
    }

    return new Future.value(bootcamps);
  }
}

void main(List<String> arguments) {
  dividir();
  //bool r = esPar();
  print('El numero es par?: ${esPar()}');
  saludo1('sinforosa');
  String nombre = 'tiburcio';
  saludo1(nombre);
  saludo2('pancrasio', 1985);
  saludo3('filomena', 2000);
  String? nombre2;
  int? year2;
  saludo3(nombre2, year2);
  saludo4();
  saludo4('transito');
  //saludo 4, se debe enviar almenos el argumento string 
  saludo4('cupertino', 2040);

  //llamando a la funcion saludo 5  con parametros renombrados 
  saludo5();//como son opcionales los parametros
  saludo5(name: 'anacleto');
  saludo5(year: 1998, name: 'Anastasia');
  saludo5(year: year2);
  saludo5(year: 2040);

  saludo6(name: 'cleto', mensaje: 'que onda');
  saludo6(mensaje: 'que tal', name: 'petronila');

  //uso de funciones anonimas
  var alumnos = Map(); 
  alumnos[1] = 'analeto';
  alumnos[2] = 'Telesforo';
  alumnos[3] = 'Cupertino';
  alumnos[4] = 'Pantaleón';
  alumnos[5] = 'Panfilo';
  alumnos[6] = 'tranquiliño';

  //implementar el map con una funcion anonima
  alumnos.forEach(
    (key, value) =>
      print('Clave: $key, valor: $value')
     );

}

  void dividir() {
    int n1 = 12;
    int n2 = 5;
    int cociente;
    int residuo; 
    double resultado;
    
    resultado = n1/n2;
    print('Resultado dividir $n1 entre $n2 es $resultado');


    cociente = n1 ~/ n2; 
    print('El cociente de la division $n1 entre $n2 es $cociente');

    residuo = n1 % n2;
    print('residuo de dividir $n1 entre $n2 es $residuo');


  }

    bool esPar() {
      var numero = 15;
      if (numero % 2 == 0){
        return true;
        } else {
          return false;
        }
    }

    void saludo1(String name) {
      //Funcion con un parametro 
      print ('Hola $name');
    }

    void saludo2(String? name, int? year) {
      //funcion con 2 parametros posicionales
      //que podrian tener un valor nulo
      print('Saludos Hola $name, estas en el año $year');
    }

     void saludo3(String? name, int? year) {
      //funcion con 2 parametros posicionales
      //que podrian tener un valor nulo
      print('Saludos Hola $name, estas en el año $year');
     }
     
     void saludo4 ([String name = 'desconocido', int year = 2023]) {
      //funcion con 2 parametros opcionales
      //se le pueden enviar 0,1 o 2 parametros
      print('saludo4 hola $name, estas en el año $year');

     }

     void saludo5 ({String name = 'desconocido', int? year}) {
      //funcion con 2 parametros nombrados
      //estos parametros son opcionales y se pueden enviar en cualquier orden 
      //se requieren inicializar o permitir los valores null
      print('saludos Hola $name, estás en el año $year');
     }

     void saludo6 ({required String name, required String mensaje}) {
      //funcion con 2 parámetros nombrados pero requeridos
      print('saludo6: $mensaje, $name');
     }

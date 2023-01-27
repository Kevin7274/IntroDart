import 'dart:collection';
//import 'dart:io';

void main(List<String> arguments) {
 /* stdout.write('por favor, escribe tu nombre:');
  String? name =stdin.readLineSync();
  print('Bienvenido $name al mundo dart'); */

  var labThings = ['chairs', 'tables', 'PC', 'laptops', 'code', 'software', 'mouse', 'cable'];

    print('Imprimiendo el contenido de lsbThings con print: $labThings');

    print('Imprimiendo el contenido de labThings con for: ');
    for (var e in labThings) {
      print(e);
    }
    
    var i = 1;
    var mapLabThings = {
      for (var e in labThings)
      i++: e
    };
    print('Contenido del mapa: $mapLabThings');

    i = 1;
    var cosasCon5Letras = { 
      for (var e in labThings)
        if (e.length >= 5 && e.length <= 6)
        i++: e
         

    };
    print ('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');

    //agregar valores a un mapa
    cosasCon5Letras[5] = 'control';
    print('cosas del lab con 5 o 6 letras: $cosasCon5Letras');
    //agreagar solo si no esta en el mapa y revuperar ese valor
    var valor1 = cosasCon5Letras.putIfAbsent(6, () => 'virus');
    print('valor obtenido del mapa: $valor1');
    print('Actualizacion de cosa del lab con 5 o 6 letras: $cosasCon5Letras');
    
    //obtención  de los keys del mapa
    print('claves del mapa labThings: ');
    for (var key in mapLabThings.keys) {
      print(key);
    }
    //obetencion de todos los values del mapa
    print('Valores del mapa mapLabThings: ');
    for ( var value in mapLabThings.values){
      print(value);
    }

    //uso de foreach
    print(' imprimiendo mapLabThings con un foreach: ');
    mapLabThings.forEach((k, v) {
      print('clave: $k, valor: $v');
    });

    //cambiando los valores del mapa
    mapLabThings.forEach((key, value) {
      if (key % 2==0) mapLabThings[key] = '';
    });
    print('Nuevo contenido de mapLabThings: $mapLabThings');

    //buscando keys en el mapa maplabThings
    print('¿el mapa contiene la clave 10? ${mapLabThings.containsKey(10)}');
    
    //buscar un valor en el mapa mapLabThings
    print('¿el mapa contiene el valor code?: ${mapLabThings.containsValue('code')}');

    //splaytreemap para ordenar un mapa 
    var frutas = SplayTreeMap();
    frutas[4] = 'manzana';
    frutas[1] = 'naranja';
    frutas[2] = 'mango'; 
    frutas[5] = 'papaya';
    frutas[0] = 'platano';
    frutas[3] = 'fresa';

   print('mapa de frutas: $frutas');

   var frutas2 = Map.fromEntries(frutas.entries.toList());
   print('frutas 2: $frutas2');

   //ordenar  por valores
   var frutasOrdenadas = Map.fromEntries(frutas.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
   print('frutas ordenadas por valor: $frutasOrdenadas'); 

}

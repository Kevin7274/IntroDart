void main(){
  bool? x;
  
  //cambia el valor de x
  //x=false;
  
  if( x==null ){
    print('_La variable x tiene un valor nulo_');
  }
  else{
    print('_La variable x no tiene un valor nulo_');
    if(x){
      print('_X es verdadera_');
    }
    else{
      print('_X es falsa_');
    }
  }
}
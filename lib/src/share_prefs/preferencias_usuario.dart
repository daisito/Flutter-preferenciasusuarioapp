
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs ;

  initPrefs() async {
     this._prefs = await SharedPreferences.getInstance();
  }

  //GET y SET
  get genero{
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value){
    _prefs.setInt('genero', value);
  }

  get colorSecundario{
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value){
    _prefs.setBool('colorSecundario', value);
  }

  get nombreUsario{
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsario(String value){
    _prefs.setString('nombreUsuario', value);
  }

  get ultimaPagina{
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value){
    _prefs.setString('ultimaPagina', value);
  }

  ///NINGUNA DE ESTAS PROPIEDADES SE USA
  // bool _colorSecundario;
  // int _genero;
  // String _nombre;


}
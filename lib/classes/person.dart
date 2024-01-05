class Person {
  String _name = 'default';
  double _weight = 1.0;
  double _height = 1.0;
  double _bmi = 0.0;
  String _class = '';

  get getName => _name;

  set setName(value) => _name = value;

  get getWeight => _weight;

  set setWeight(value) => _weight = value;

  get getHeight => _height;

  set setHeight(value) => _height = value;

  get getBmi => _bmi.toStringAsFixed(2);

  set setBmi(value) => _bmi = value;

  get getClass => _class;

  set setClass(value) => _class = value;

  Person.full(this._name, this._weight, this._height);

  Person();

  void calculateBMI() {
    if (_height <= 0 || _weight <= 0 ){
      throw ArgumentError('Valores de altura ou peso não podem ser zero');
    }

    _bmi = _weight / (_height * _height);
    
    if (_bmi < 16){
      _class = 'Magreza Grave';
    } else if (_bmi < 17){
      _class = 'Magreza Moderada';
     } else if (_bmi < 18.5){
      _class = 'Magreza Leve';
     } else if (_bmi < 25){
      _class = 'Saudável';
     } else if (_bmi < 30){
      _class = 'Sobrepeso';
     } else if (_bmi < 35){
      _class = 'Obesidade Grau I';
     } else if (_bmi < 40){
      _class = 'Obesidade Grau II (severa)';
     } else {
      _class = 'Obesidade Grau III (mórbida)';
     }
  }
}

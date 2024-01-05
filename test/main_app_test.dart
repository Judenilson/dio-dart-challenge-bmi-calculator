import 'package:test/test.dart';
import 'package:main_app/classes/person.dart' as bmi;

void main() {
  bmi.Person person = bmi.Person.full("Judenilson", 105, 1.75);

  test('Calculo IMC', () {
    person.calculateBMI();
    expect(person.getBmi, equals('34.29'));
  });

  test('Calculo IMC com altura zero, deve retornar um erro', () {
    person.setHeight = 0.0;
    expect(() => person.calculateBMI(), throwsA(TypeMatcher<ArgumentError>()));
  });
  
  test('Calculo IMC com peso zero, deve retornar um erro', () {
    person.setHeight = 1.75;
    person.setWeight = 0.0;
    expect(() => person.calculateBMI(), throwsA(TypeMatcher<ArgumentError>()));
  });
}

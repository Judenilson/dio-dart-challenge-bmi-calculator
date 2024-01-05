import 'dart:convert';
import 'dart:io';

import 'package:main_app/classes/person.dart';

void main(List<String> arguments) {
  Person person = Person();
  print("Bem vindo ao Desafio - Calculadora IMC");

  while (true) {
    print("Digite seu nome:");
    var input = stdin.readLineSync(encoding: utf8);
    if (input != null && input != '' && input != ' ') {
      person.setName = input;
      break;
    } else {
      print('O nome deve conter um valor!');
    }
  }

  while (true) {
    print("Digite seu peso em kilos:");
    var input = stdin.readLineSync(encoding: utf8);
    if (input != null && input != '' && input != ' ' && input != '0') {
      try {
        person.setWeight = double.tryParse(input);
        break;
      } catch (e) {
        print('O peso deve conter um valor válido!');
      }
    } else {
      print('O peso deve conter um valor!');
    }
  }
  while (true) {
    print("Digite sua altura em metros:");
    var input = stdin.readLineSync(encoding: utf8);
    if (input != null && input != '' && input != ' ' && input != '0') {
      try {
        person.setHeight = double.tryParse(input);
        break;
      } catch (e) {
        print('A Altura deve conter um valor válido!');
      }
    } else {
      print('A Altura deve conter um valor!');
    }
  }

  person.calculateBMI();

  print(
      "${person.getName}, seu IMC é: ${person.getBmi} sua classificação é de ${person.getClass}");
}

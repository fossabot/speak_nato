/*
 * Code that performs translation to phonetic alphabet
*/
import "dart:async";

import 'package:shared_preferences/shared_preferences.dart';

String alphabet = "";

Future _getAlphabet() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  alphabet = prefs.getString('alphabet');
}

String phonetizeText(String _str) {
  _getAlphabet();

  switch (alphabet) {
    case "ICAO":
      return convertToICAO(_str);
    default:
      return "";
  }
}

String convertToICAO(String _str) {
  String _phoneticText = "";

  _str = _str.trim();

  for (int i = 0; i < _str.length; i++) {
    switch (_str[i]) {
      case "a":
      case "A":
        _phoneticText += "Alpha ";
        break;
      case "b":
      case "B":
        _phoneticText += "Bravo ";
        break;
      case "c":
      case "C":
        _phoneticText += "Charlie ";
        break;
      case "d":
      case "D":
        _phoneticText += "Delta ";
        break;
      case "e":
      case "E":
        _phoneticText += "Echo ";
        break;
      case "f":
      case "F":
        _phoneticText += "Foxtrot ";
        break;
      case "g":
      case "G":
        _phoneticText += "Golf ";
        break;
      case "h":
      case "H":
        _phoneticText += "Hotel ";
        break;
      case "i":
      case "I":
        _phoneticText += "India ";
        break;
      case "j":
      case "J":
        _phoneticText += "Juliett ";
        break;
      case "k":
      case "K":
        _phoneticText += "Kilo ";
        break;
      case "l":
      case "L":
        _phoneticText += "Lima ";
        break;
      case "m":
      case "M":
        _phoneticText += "Mike ";
        break;
      case "n":
      case "N":
        _phoneticText += "November ";
        break;
      case "o":
      case "O":
        _phoneticText += "Oscar ";
        break;
      case "p":
      case "P":
        _phoneticText += "Papa ";
        break;
      case "q":
      case "Q":
        _phoneticText += "Quebec ";
        break;
      case "r":
      case "R":
        _phoneticText += "Romeo ";
        break;
      case "s":
      case "S":
        _phoneticText += "Sierra ";
        break;
      case "t":
      case "T":
        _phoneticText += "Tango ";
        break;
      case "u":
      case "U":
        _phoneticText += "Uniform ";
        break;
      case "v":
      case "V":
        _phoneticText += "Victor ";
        break;
      case "w":
      case "W":
        _phoneticText += "Whiskey ";
        break;
      case "x":
      case "X":
        _phoneticText += "Xray ";
        break;
      case "y":
      case "Y":
        _phoneticText += "Yankee ";
        break;
      case "z":
      case "Z":
        _phoneticText += "Zulu ";
        break;
      case "0":
        _phoneticText += "Zero ";
        break;
      case "1":
        _phoneticText += "One ";
        break;
      case "2":
        _phoneticText += "Two ";
        break;
      case "3":
        _phoneticText += "Three ";
        break;
      case "4":
        _phoneticText += "Four ";
        break;
      case "5":
        _phoneticText += "Five ";
        break;
      case "6":
        _phoneticText += "Six ";
        break;
      case "7":
        _phoneticText += "Seven ";
        break;
      case "8":
        _phoneticText += "Eight ";
        break;
      case "9":
        _phoneticText += "Nine ";
        break;
      case " ":
        _phoneticText += "Space ";
        break;
    }
  }

  return _phoneticText;
}

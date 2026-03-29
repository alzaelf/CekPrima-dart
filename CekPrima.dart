import 'dart:io';

bool CekPrima(int n){
    if (n<2) return false;
    if (n==2) return true;
    if (n%2==0) return false;

    for (int i=3; i*i <= n; i+=2){
      if (n % i == 0) return false;
    }
    return true;
  }

void main(){
  print('Pengecekan Bilangan Prima');
  print('Masukkan angka yang akan dicek: ');

  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? '');

  if (number != null){
    if(CekPrima(number)) {
      print('$number adalah bilangan prima');
    } else {
        print('$number bukan bilangan prima');
      }
  } else {
    print('input tidak valid, harus berupa angka');
  }
}

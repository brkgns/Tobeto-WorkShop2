import 'dart:math';

bool isArmstrongNumber(int number) {
  int mainNumber = number;
  int sum = 0;
  int basamakSayisi = number.toString().length;

  while (number > 0) {
    int basamak = number % 10;
    sum = sum + pow(basamak, basamakSayisi).toInt();
    number ~/= 10;
    }

      return sum == mainNumber;
}

void main() {
  int number = 371; // Örnek olarak aldığım sayı
  if (isArmstrongNumber(number)) {
    print('$number bir armstrong sayısıdır.');
  }else{
    print('$number bir armstrong sayısı değildir.');
  }
}
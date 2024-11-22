//Viết chương trình chuyển đổi 1 số 
//nguyên (b>=1) được nhập từ bàn phím 
//thành số nhị phân.
import 'dart:io';

void main() {
  // Nhập số nguyên từ bàn phím
  stdout.write("Nhập một số nguyên (b >= 1): ");
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null || number < 1) {
    print("Vui lòng nhập một số nguyên hợp lệ lớn hơn hoặc bằng 1.");
    return;
  }

  // Chuyển đổi số nguyên sang nhị phân
  String binary = convertToBinary(number);
  print("Số nhị phân của $number là: $binary");
}

String convertToBinary(int number) {
  String binary = '';
  while (number > 0) {
    binary = (number % 2).toString() + binary; // Lấy phần dư và ghép vào chuỗi nhị phân
    number ~/= 2; // Chia nguyên cho 2
  }
  return binary;
}



import 'dart:io';

void main() {
  // Nhập số nguyên từ bàn phím
  stdout.write("Nhập một số nguyên (n >= 1): ");
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n == null || n < 1) {
    print("Vui lòng nhập một số nguyên hợp lệ lớn hơn hoặc bằng 1.");
    return;
  }

  // Tính tổng các ước số
  int sum = sumOfDivisors(n);
  print("Tổng các ước số của $n là: $sum");
}

// Hàm tính tổng các ước số
int sumOfDivisors(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      sum += i; // Cộng ước số vào tổng
    }
  }
  return sum;
}

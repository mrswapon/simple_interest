import 'dart:io';

void main() {
  print("Enter the principal amount: ");
  double principal = double.parse(stdin.readLineSync() ?? "0.0");

  print("Enter the annual interest rate (in percentage): ");
  double annualInterestRate = double.parse(stdin.readLineSync() ?? "0.0");

  print("Enter the number of years: ");
  int years = int.parse(stdin.readLineSync() ?? "0");

  double simpleInterest =
      calculateSimpleInterest(principal, annualInterestRate, years);

  double totalAmount = principal + simpleInterest;
  print(
      'Simple Interest after $years years will be \$${simpleInterest.toStringAsFixed(2)}');
  print(
      'Total Amount after $years years will be \$${totalAmount.toStringAsFixed(2)}');
}

double calculateSimpleInterest(
    double principal, double annualInterestRate, int years) {
  double rate = annualInterestRate / 100;

  double simpleInterest = principal * rate * years;

  return simpleInterest;
}

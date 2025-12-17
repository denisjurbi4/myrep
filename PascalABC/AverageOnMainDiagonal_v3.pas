program AverageMainDiagonal;

uses crt;

const
  N = 4;  { Розмір квадратного масиву }

var
  A: array[1..N, 1..N] of Integer;
  i, j: Integer;
  sum, average: Real;

begin
  clrscr;
  Randomize;  { Ініціалізація генератора випадкових чисел }

  { Автоматичне заповнення масиву випадковими числами від -100 до 100 }
  for i := 1 to N do
    for j := 1 to N do
      A[i, j] := Random(201) - 100;

  { Виведення масиву на екран }
  writeln('Згенерований масив:');
  for i := 1 to N do
  begin
    for j := 1 to N do
      write(A[i, j]:5);
    writeln;
  end;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to N do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  average := sum / N;

  writeln;
  writeln('Середнє арифметичне елементів головної діагоналі: ',
          average:0:2);

  readln;
end.

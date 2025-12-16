program RandomArrayMainDiagonal;

uses crt;

const
  N = 4;

var
  A: array[1..N, 1..N] of Integer;
  i, j: Integer;
  sum: Real;
  average: Real;

begin
  clrscr;
  Randomize;  { Ініціалізація генератора випадкових чисел }

  { Заповнення масиву випадковими числами від -100 до 100 }
  for i := 1 to N do
    for j := 1 to N do
      A[i, j] := Random(201) - 100;  { Random(201) дає 0..200, віднімаємо 100 }

  { Вивід масиву на екран }
  writeln('Згенерований масив:');
  for i := 1 to N do
  begin
    for j := 1 to N do
      write(A[i, j]:6);  { Форматований вивід для зручності }
    writeln;
  end;

  { Обчислення суми головної діагоналі }
  sum := 0;
  for i := 1 to N do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  average := sum / N;

  writeln('Середнє арифметичне головної діагоналі: ', average:0:2);

  readln;
end.

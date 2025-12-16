program AverageMainDiagonal;

uses crt;

const
  N = 4;  { Розмір квадратного масиву }

var
  A: array[1..N, 1..N] of Integer;
  i: Integer;
  sum: Real;
  average: Real;

begin
  clrscr;
  
  { Введення елементів масиву }
  writeln('Введіть елементи ', N, 'x', N, ' масиву:');
  for i := 1 to N do
    for var j := 1 to N do
    begin
      write('A[', i, ',', j, '] = ');
      readln(A[i, j]);
    end;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to N do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  average := sum / N;

  writeln('Середнє арифметичне елементів головної діагоналі: ', average:0:2);

  readln;
end.

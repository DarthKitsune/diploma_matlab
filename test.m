local_time = cputime;
out = normalize(candles(1:30, :));
X = ['�� �������� ������ ����: ', num2str(cputime - local_time)];
disp(X);
disp(out(:, :));
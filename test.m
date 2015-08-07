local_time = cputime;
out = normalize(candles(1:30, :));
X = ['На загрузку данных ушло: ', num2str(cputime - local_time)];
disp(X);
disp(out(:, :));
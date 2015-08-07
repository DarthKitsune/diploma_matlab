start_time = cputime;
filename = 'D:\_Workspace\Quotes\USDJPYM1.csv';

%load data
local_time = cputime;
arr = load_data(filename);
X = ['На загрузку данных ушло: ', num2str(cputime - local_time)];
disp(X);
L = ['Всего прошло: ', num2str(cputime - start_time)];
disp(L);

%create candlestick
local_time = cputime;
candles = create_candles(arr, 15);
X = ['На создание свечей ушло: ', num2str(cputime - local_time)];
disp(X);
L = ['Всего прошло: ', num2str(cputime - start_time)];
disp(L);

X = ['Всего затрачено времени: ', num2str(cputime - start_time)];
disp(X);
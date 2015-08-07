start_time = cputime;
filename = 'D:\_Workspace\Quotes\USDJPYM1.csv';

%load data
local_time = cputime;
arr = load_data(filename);
X = ['�� �������� ������ ����: ', num2str(cputime - local_time)];
disp(X);
L = ['����� ������: ', num2str(cputime - start_time)];
disp(L);

%create candlestick
local_time = cputime;
candles = create_candles(arr, 15);
X = ['�� �������� ������ ����: ', num2str(cputime - local_time)];
disp(X);
L = ['����� ������: ', num2str(cputime - start_time)];
disp(L);

X = ['����� ��������� �������: ', num2str(cputime - start_time)];
disp(X);
% Definisi fungsi
f = @(x) exp(x) - 2 - x^2;

% Nilai awal
x_i_min_1 = 1.4;
x_i = 1.5;

% Toleransi error (desired to be less than 1%)
es = 0.01;

% Iterasi
iter = 0;
ea = Inf; % Inisialisasi relative error
while ea > es  % Check error using relative error
  % Menghitung nilai fungsi pada x0 dan x1
  f_i_min_1 = f(x_i_min_1);
  f_i = f(x_i);
  
  % Menghitung akar baru
  x_i_plus_1 = x_i - (f_i * (x_i - x_i_min_1)) / (f_i - f_i_min_1);
  
  % Calculate ea using the relative error formula
  ea = abs((x_i_plus_1 - x_i) / x_i_plus_1) * 100;
  
  % Memperbarui nilai x0 dan x1
  x_i_min_1 = x_i;
  x_i = x_i_plus_1;
  
  % Menambahkan iterasi
  iter = iter + 1;
end

% Menampilkan hasil
disp('Akar persamaan:');
disp(x_i_plus_1);

% Menampilkan relative error
disp('Relative error:');
disp(ea);

% Menampilkan jumlah iterasi
disp('Jumlah iterasi:');
disp(iter);
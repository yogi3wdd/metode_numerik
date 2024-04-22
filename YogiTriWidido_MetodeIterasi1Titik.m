% Mendefinisikan fungsi
f = @(x) x^3 - 3*x^2 - 7*x + 5;

% Menentukan nilai awal
xi = 0.1;

% Menentukan toleransi error
es = 0.01;

% Inisialisasi iterasi
iterasi = 0;

% Loop iterasi
while abs(f(xi)) > es
  % Menghitung nilai xr
  xr = xi - f(xi) / (3*xi^2 - 6*xi - 7);

  % Memperbarui nilai xi
  xi = xr;

  % Meningkatkan iterasi
  iterasi = iterasi + 1;
end

% Menampilkan hasil
disp('=====Hasil=====')
disp(['Akar: ', num2str(xi)]);
disp(['Iterasi: ', num2str(iterasi)]);

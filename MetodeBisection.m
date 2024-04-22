% Mendefinisikan fungsi
f = @(x) exp(x) - 2 - x^2;

% Menentukan nilai awal
xi = 0.5;
xu = 1.5;

% Menentukan toleransi error
es = 0.01;

% Inisialisasi iterasi
iterasi = 0;

% Loop iterasi
while abs((xu - xi) / xi) > es
  % Mencari nilai tengah
  xr = (xi + xu) / 2;

  % Mengevaluasi fungsi pada nilai tengah
  fxr = f(xr);

  % Menentukan interval baru
  if fxr * f(xi) < 0
    xu = xr;
  else
    xi = xr;
  end

  % Meningkatkan iterasi
  iterasi = iterasi + 1;
end

% Menampilkan hasil
disp('=====Hasil=====')
disp(['Akar: ', num2str(xr)]);
disp(['Iterasi: ', num2str(iterasi)]);

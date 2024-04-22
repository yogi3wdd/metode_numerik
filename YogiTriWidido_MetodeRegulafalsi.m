% Mendefinisikan fungsi
f = @(x) x^3 + x^2 - 5*x - 4;

% Menentukan nilai awal
xi = 1;
xu = 3;

% Menentukan toleransi error
es = 0.005;

% Inisialisasi iterasi
iterasi = 0;

% Loop iterasi
while abs((xu - xi) / xi) > es
  % Menghitung nilai xr
  xr = xu - (f(xu) * (xu - xi)) / (f(xu) - f(xi));

  % Mengevaluasi fungsi pada nilai xr
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

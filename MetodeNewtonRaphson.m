function newtonRaphson_v2()
    % Inisialisasi variabel
    xi = 0.1;              % Nilai awal
    es = 1;                % Toleransi error dalam persen
    max_iter = 100;        % Jumlah iterasi maksimum
    iter = 0;              % Penghitung iterasi
    ea = 100;              % Error awal yang besar untuk memulai loop

    % Fungsi dan turunan fungsi
    syms x;
    f = @(x) x.^3 - 3*x.^2 - 7*x + 5;  % Fungsi f(x)
    df = diff(f,x);       % Turunan f(x), f'(x)
    
    fprintf('Jadi untuk memperoleh akar dari x^3 - 3x^2 - 7x + 5 adalah sebagai berikut : \n');
    fprintf('============================================================================= \n');

    % Loop iterasi Newton-Raphson
    while ea > es && iter < max_iter
        iter = iter + 1;                   % Inkrementasi penghitung iterasi
        x_new = xi - subs(f, x, xi) / subs(df, x, xi);         % Hitung nilai x baru
        ea = abs((x_new - xi)/x_new) * 100; % Hitung error relatif perkiraan
        
        fprintf('Iterasi %d: xi = %.5f, ea = %.2f%%\n', iter, x_new, ea);
        
        if ea <= es
            break; % Keluar dari loop jika error di bawah toleransi
        end
        
        xi = x_new; % Update nilai xi untuk iterasi berikutnya
    end

    % Tampilkan hasil
    fprintf('====================================Hasil====================================');
    fprintf('\nSolusi ditemukan: x = %.5f setelah %d iterasi dengan error sebesar %.2f%%\n', x_new, iter, ea);
    
    % Plot fungsi
    x = -2:0.1:10;
    y = f(x);
    figure;
    plot(x, y);
    hold on;
    plot(x_new, f(x_new), 'ro', 'MarkerSize', 10); % Tanda lingkaran merah untuk akar
    grid on;
    xlabel('x');
    ylabel('f(x)');
    title('Grafik Fungsi Metode Newton-Raphson');
    legend('f(x)', 'Akar fungsinya');
    hold off;
end

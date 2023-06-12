%A = input("A bir kare matris giriniz A=:");
A = [3 7 8 15; 2 6 5 11; 2 6 10 19; 4 11 19 88];
A = [1 2 6; 2 5 15; 6 15 46];

if size(A,1) ~= size(A,2)
	error('Kare matris girilmedi');
end

n = length(A);

U = zeros(n); 
L = eye(n);

for i = 1:n

	for j = 1:n

		toplam = 0;

		if i>j
			for  k = 1:j-1
				toplam = toplam + L(i,k) * U(k,j);
			end

			L(i,j) = (A(i,j)-toplam)/U(j,j);
		
		else

			for k = 1:i-1

				toplam = toplam +L(i,k)*U(k,j);

			end

			U(i,j) = A(i,j)-toplam;

		end
	end
end

[l,u] = lu(B);

disp('L = ');
disp(L);
disp(l);

disp("");

disp('U = ');
disp(U);
disp(u);


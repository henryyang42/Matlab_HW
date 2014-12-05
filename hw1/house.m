% 全部以萬為單位
monthly_payment = loan(400, 0.03, 20, 'initial');
fprintf('Monthly payment = %.5f\n', monthly_payment);

x=500*(1+0.07/12)^(240); % 房子20年後的終值
fprintf('Final value of the house = %.2f\n', x);
y=saving(monthly_payment, 0.0138, 20, 'final'); % 20年後付給銀行的所有房貸的終值
fprintf('Final value of the payments = %.2f\n', y);
z=100*(1+0.0138/12)^(240);
fprintf('Final value of the down payment = %.3f\n', z);

final_earning = x-y-z;
fprintf('Final earning = %.2f\n', final_earning);
fprintf('Initial earning = %.2f\n', final_earning/((1+0.0138/12)^(240)));

final_earning_with_saving = final_earning + y - saving(monthly_payment-1, 0.0138, 20, 'final');
fprintf('Final earning  (with rent) = %.2f\n', final_earning_with_saving);
fprintf('Initial earning  (with rent) = %.2f\n', final_earning_with_saving/((1+0.0138/12)^(240)));
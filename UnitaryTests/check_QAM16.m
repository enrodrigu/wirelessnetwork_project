function check_QAM16()
addpath('PATH');
% Apply unit test for BPSK demapping 
% Create the random sequence 
N = 256;
b = (randn(1,N)>0);
% Add some noise to be sure that we are resistant 
y   = bitMapping(b,4);
% y   = y + rand(1,length(y))*1/5;
% Call the function done by student 
bE  = QAM16_demod(y);
% Get BER 
e = sum(xor(bE,b));
% Print the result 
if e == 0
   disp('Test for QAM-16 mapping is Correct');
else 
    disp('FAIL test for QAM-16 demapping');
end
end
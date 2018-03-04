function number_identification
%This function matches each frequency based on the dial_fft function with
%the digits on the telephone.

y=dial_fft('DtmfA.ogg');
fprintf('The number for A is ');
match(y);

y=dial_fft('DtmfB.ogg');
fprintf('The number for B is ');
match(y);

y=dial_fft('DtmfC.ogg');
fprintf('The number for C is ');
match(y);

y=dial_fft('DtmfD.ogg');
fprintf('The number for D is ');
match(y);

y=dial_fft('DtmfE.ogg');
fprintf('The number for E is ');
match(y);

y=dial_fft('DtmfF.ogg');
fprintf('The number for F is ');
match(y);

y=dial_fft('DtmfG.ogg');
fprintf('The number for G is ');
match(y);
end

function match(y)
if y(1)==697
    if y(2)==1209
        fprintf('1\n');
    elseif y(2)==1336
        fprintf('2\n');
    else
        fprintf('3\n');
    end
elseif y(1)==770
    if y(2)==1209
        fprintf('4\n');
    elseif y(2)==1336
        fprintf('5\n');
    else
        fprintf('6 \n');
    end
elseif y(1)==852
    if y(2)==1209
        fprintf('7\n');
    elseif y(2)==1336
        fprintf('8\n');
    else
        fprintf('9\n');
    end
elseif y(1)==941
    if y(2)==1209
        fprintf('*\n');
    elseif y(2)==1336
        fprintf('0\n');
    else
        fprintf('#\n');
    end
end
end


        





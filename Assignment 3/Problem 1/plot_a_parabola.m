function plot_a_parabola
%This function reads'plot_a_parabola' in which we are writing a cosine
%fourier series for this function. It is even between (-0.5,0.5).
%Please refer the derivation page for the derivation of equations.

t=linspace(-1,1);
y1=0;
Y=1-(2*t).^2;
Y(Y<0)=0;
plot(t,Y);
hold on
%initialize A0 from the derivation
y=1/3;
err=0;
for m=1:10
    %equation of A_m from the derivation
    a=-8*(pi*m*cos(pi*m/2)-2*sin(pi*m/2))/((pi*m)^3); 
    
    y=y+a*cos(m*pi*t);
    plot(t,y);
    
    %find the rms error
    diff = (Y-y).^2;
    err(m)= sqrt(mean(diff));
    
end
hold off
N=1:m;
figure
plot(N,err);

end

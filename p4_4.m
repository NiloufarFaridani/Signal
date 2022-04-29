[x,fs] = audioread('q4.wav');
xmono = sum(x, 2) / size(x, 2);
h=zeros(size(xmono));
h(1:fs)=xmono(1:fs);
n0=round(0.15*length(xmono)/13);
for i = 1 : length(xmono)
    h(i)=0;
    if i==1 
     h(i)=1; 
    end
    if i==1+n0
     h(i)=0.15;
    end
end
disp("a:0.15");
disp("n0:");
disp(n0);
y=conv(xmono,h);
u=1:length(y);
bar(u,y);
sound(y,fs);
filename = 'y_best.wav';
audiowrite(filename,y,fs);
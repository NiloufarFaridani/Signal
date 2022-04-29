x=[2 -2 7 -3 2 4 -6 1];
h=[5 2 4 -6 5 1 -8 0 7 2 9];
convol=conv(x,h,'full');  
xticks=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18];
convolution=(1:18);
for n=1:length(xticks)
    convindex=0;
    for k=1:length(h)
        if (n-k<=7) && (n-k>=0)
            convindex=convindex +x(n-k+1)*h(k);
        end
    end
    convolution(1,n)=convindex;
end
disp('wanted convolution:');
disp(convolution);
disp('matlab convolution:');
disp(convol);
figure;
set(gca,'XTickLabel',xticks)
bar(xticks,convol);
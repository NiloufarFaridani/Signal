R=input('input matrix:');
dete=p1(R);
if(dete==0)
    disp('there is no inverse matrix');
else
    inversematrix=p2(R,dete);
    disp("determinant:");
    disp(dete);
    disp("inverse:");
    disp(inversematrix);
end
function [inverse]=p2(R,determinant)
    R2=[R(4) -R(2);-R(3) R(1)];
    inversefac=(1/determinant);
    inverse=[inversefac*R2(1) inversefac*R2(2);inversefac*R2(3) inversefac*R2(4)];
end
function [determinant]= p1(R)
    determinant=(R(1)*R(4)) - (R(2)*R(3));
end
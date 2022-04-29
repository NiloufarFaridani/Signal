R=input('input matrix:');
dete=p1(R);
disp("determinant:");
disp(dete);
function [determinant]= p1(R)
    determinant=(R(1)*R(4)) - (R(2)*R(3));
end
function bv = basis_y(n,x,y,vertices,deg)

L1=[ones(1,3);vertices']'\[1;0;0];
L2=[ones(1,3);vertices']'\[0;1;0];
L3=[ones(1,3);vertices']'\[0;0;1];

L13 = L1(3);  L23 = L2(3);  L33 = L3(3);

L1 = L1'*[1 x y]';
L2 = L2'*[1 x y]';
L3 = L3'*[1 x y]';

if deg == 1
    
    if n==1
    bv = L13;
elseif n==2
    bv = L23;
elseif n==3
    bv = L33;
    end
    
elseif deg == 2
    if n == 1
 bv = -L13 + 4*L1*L13;
elseif n == 2
 bv = -L23 + 4*L2*L23;
elseif n == 3
 bv = -L33 + 4*L3*L33;
elseif n == 4
 bv = 4*L13*L2 + 4*L1*L23;
elseif n == 5
 bv = 4*L23*L3 + 4*L2*L33;
elseif n == 6
 bv = 4*L13*L3 + 4*L1*L33;
    end

elseif deg == 3
    if n==1
    bv = L13 - 9*L1*L13 + (27*L1^2*L13)/2;
elseif n==2
    bv = L23 - 9*L2*L23 + (27*L2^2*L23)/2;
elseif n==3
    bv = L33 - 9*L3*L33 + (27*L3^2*L33)/2;
elseif n==4
    bv = (-9*L13*L2)/2 + 27*L1*L13*L2 - (9*L1*L23)/2 + (27*L1^2*L23)/2;
elseif n==5
    bv = (-9*L13*L2)/2 + (27*L13*L2^2)/2 - (9*L1*L23)/2 + 27*L1*L2*L23;
elseif n==6
    bv = (-9*L23*L3)/2 + 27*L2*L23*L3 - (9*L2*L33)/2 + (27*L2^2*L33)/2;
elseif n==7
    bv = (-9*L23*L3)/2 + (27*L23*L3^2)/2 - (9*L2*L33)/2 + 27*L2*L3*L33;
elseif n==8
    bv = (-9*L13*L3)/2 + (27*L13*L3^2)/2 - (9*L1*L33)/2 + 27*L1*L3*L33;
elseif n==9
    bv = (-9*L13*L3)/2 + 27*L1*L13*L3 - (9*L1*L33)/2 + (27*L1^2*L33)/2;
elseif n==10
    bv = 27*L13*L2*L3 + 27*L1*L23*L3 + 27*L1*L2*L33;
else
    end

elseif deg==4
if n == 1
 bv = -L13 + (44*L1*L13)/3 - 48*L1^2*L13 + (128*L1^3*L13)/3;
elseif n == 2
 bv = -L23 + (44*L2*L23)/3 - 48*L2^2*L23 + (128*L2^3*L23)/3;
elseif n == 3
 bv = -L33 + (44*L3*L33)/3 - 48*L3^2*L33 + (128*L3^3*L33)/3;
elseif n == 4
 bv = (16*L13*L2)/3 - 64*L1*L13*L2 + 128*L1^2*L13*L2 + (16*L1*L23)/3 - 32*L1^2*L23 + (128*L1^3*L23)/3;
elseif n == 5
 bv = 4*L13*L2 - 32*L1*L13*L2 - 16*L13*L2^2 + 128*L1*L13*L2^2 + 4*L1*L23 - 16*L1^2*L23 - 32*L1*L2*L23 + 128*L1^2*L2*L23;
elseif n == 6
 bv = (16*L13*L2)/3 - 32*L13*L2^2 + (128*L13*L2^3)/3 + (16*L1*L23)/3 - 64*L1*L2*L23 + 128*L1*L2^2*L23;
elseif n == 7
 bv = (16*L23*L3)/3 - 64*L2*L23*L3 + 128*L2^2*L23*L3 + (16*L2*L33)/3 - 32*L2^2*L33 + (128*L2^3*L33)/3;
elseif n == 8
 bv = 4*L23*L3 - 32*L2*L23*L3 - 16*L23*L3^2 + 128*L2*L23*L3^2 + 4*L2*L33 - 16*L2^2*L33 - 32*L2*L3*L33 + 128*L2^2*L3*L33;
elseif n == 9
 bv = (16*L23*L3)/3 - 32*L23*L3^2 + (128*L23*L3^3)/3 + (16*L2*L33)/3 - 64*L2*L3*L33 + 128*L2*L3^2*L33;
elseif n == 10
 bv = (16*L13*L3)/3 - 32*L13*L3^2 + (128*L13*L3^3)/3 + (16*L1*L33)/3 - 64*L1*L3*L33 + 128*L1*L3^2*L33;
elseif n == 11
 bv = 4*L13*L3 - 32*L1*L13*L3 - 16*L13*L3^2 + 128*L1*L13*L3^2 + 4*L1*L33 - 16*L1^2*L33 - 32*L1*L3*L33 + 128*L1^2*L3*L33;
elseif n == 12
 bv = (16*L13*L3)/3 - 64*L1*L13*L3 + 128*L1^2*L13*L3 + (16*L1*L33)/3 - 32*L1^2*L33 + (128*L1^3*L33)/3;
elseif n == 13
 bv = -32*L13*L2*L3 - 32*L1*L23*L3 + 128*L13*L2*L3^2 + 128*L1*L23*L3^2 - 32*L1*L2*L33 + 256*L1*L2*L3*L33;
elseif n == 14
 bv = -32*L13*L2*L3 + 128*L13*L2^2*L3 - 32*L1*L23*L3 + 256*L1*L2*L23*L3 - 32*L1*L2*L33 + 128*L1*L2^2*L33;
elseif n == 15
 bv = -32*L13*L2*L3 + 256*L1*L13*L2*L3 - 32*L1*L23*L3 + 128*L1^2*L23*L3 - 32*L1*L2*L33 + 128*L1^2*L2*L33;
end
elseif deg == 5
    if n == 1
 bv = L13 - (125*L1*L13)/6 + (875*L1^2*L13)/8 - (625*L1^3*L13)/3 + (3125*L1^4*L13)/24;
elseif n == 2
 bv = L23 - (125*L2*L23)/6 + (875*L2^2*L23)/8 - (625*L2^3*L23)/3 + (3125*L2^4*L23)/24;
elseif n == 3
 bv = L33 - (125*L3*L33)/6 + (875*L3^2*L33)/8 - (625*L3^3*L33)/3 + (3125*L3^4*L33)/24;
elseif n == 4
 bv = (-25*L13*L2)/4 + (1375*L1*L13*L2)/12 - (1875*L1^2*L13*L2)/4 + (3125*L1^3*L13*L2)/6 - (25*L1*L23)/4 + (1375*L1^2*L23)/24 - (625*L1^3*L23)/4 + (3125*L1^4*L23)/24;
elseif n == 5
 bv = (-25*L13*L2)/6 + (125*L1*L13*L2)/2 - (625*L1^2*L13*L2)/4 + (125*L13*L2^2)/6 - (625*L1*L13*L2^2)/2 + (3125*L1^2*L13*L2^2)/4 - (25*L1*L23)/6 + (125*L1^2*L23)/4 - (625*L1^3*L23)/12 + (125*L1*L2*L23)/3 - (625*L1^2*L2*L23)/2 + (3125*L1^3*L2*L23)/6;
elseif n == 6
 bv = (-25*L13*L2)/6 + (125*L1*L13*L2)/3 + (125*L13*L2^2)/4 - (625*L1*L13*L2^2)/2 - (625*L13*L2^3)/12 + (3125*L1*L13*L2^3)/6 - (25*L1*L23)/6 + (125*L1^2*L23)/6 + (125*L1*L2*L23)/2 - (625*L1^2*L2*L23)/2 - (625*L1*L2^2*L23)/4 + (3125*L1^2*L2^2*L23)/4;
elseif n == 7
 bv = (-25*L13*L2)/4 + (1375*L13*L2^2)/24 - (625*L13*L2^3)/4 + (3125*L13*L2^4)/24 - (25*L1*L23)/4 + (1375*L1*L2*L23)/12 - (1875*L1*L2^2*L23)/4 + (3125*L1*L2^3*L23)/6;
elseif n == 8
 bv = (-25*L23*L3)/4 + (1375*L2*L23*L3)/12 - (1875*L2^2*L23*L3)/4 + (3125*L2^3*L23*L3)/6 - (25*L2*L33)/4 + (1375*L2^2*L33)/24 - (625*L2^3*L33)/4 + (3125*L2^4*L33)/24;
elseif n == 9
 bv = (-25*L23*L3)/6 + (125*L2*L23*L3)/2 - (625*L2^2*L23*L3)/4 + (125*L23*L3^2)/6 - (625*L2*L23*L3^2)/2 + (3125*L2^2*L23*L3^2)/4 - (25*L2*L33)/6 + (125*L2^2*L33)/4 - (625*L2^3*L33)/12 + (125*L2*L3*L33)/3 - (625*L2^2*L3*L33)/2 + (3125*L2^3*L3*L33)/6;
elseif n == 10
 bv = (-25*L23*L3)/6 + (125*L2*L23*L3)/3 + (125*L23*L3^2)/4 - (625*L2*L23*L3^2)/2 - (625*L23*L3^3)/12 + (3125*L2*L23*L3^3)/6 - (25*L2*L33)/6 + (125*L2^2*L33)/6 + (125*L2*L3*L33)/2 - (625*L2^2*L3*L33)/2 - (625*L2*L3^2*L33)/4 + (3125*L2^2*L3^2*L33)/4;
elseif n == 11
 bv = (-25*L23*L3)/4 + (1375*L23*L3^2)/24 - (625*L23*L3^3)/4 + (3125*L23*L3^4)/24 - (25*L2*L33)/4 + (1375*L2*L3*L33)/12 - (1875*L2*L3^2*L33)/4 + (3125*L2*L3^3*L33)/6;
elseif n == 12
 bv = (-25*L13*L3)/4 + (1375*L13*L3^2)/24 - (625*L13*L3^3)/4 + (3125*L13*L3^4)/24 - (25*L1*L33)/4 + (1375*L1*L3*L33)/12 - (1875*L1*L3^2*L33)/4 + (3125*L1*L3^3*L33)/6;
elseif n == 13
 bv = (-25*L13*L3)/6 + (125*L1*L13*L3)/3 + (125*L13*L3^2)/4 - (625*L1*L13*L3^2)/2 - (625*L13*L3^3)/12 + (3125*L1*L13*L3^3)/6 - (25*L1*L33)/6 + (125*L1^2*L33)/6 + (125*L1*L3*L33)/2 - (625*L1^2*L3*L33)/2 - (625*L1*L3^2*L33)/4 + (3125*L1^2*L3^2*L33)/4;
elseif n == 14
 bv = (-25*L13*L3)/6 + (125*L1*L13*L3)/2 - (625*L1^2*L13*L3)/4 + (125*L13*L3^2)/6 - (625*L1*L13*L3^2)/2 + (3125*L1^2*L13*L3^2)/4 - (25*L1*L33)/6 + (125*L1^2*L33)/4 - (625*L1^3*L33)/12 + (125*L1*L3*L33)/3 - (625*L1^2*L3*L33)/2 + (3125*L1^3*L3*L33)/6;
elseif n == 15
 bv = (-25*L13*L3)/4 + (1375*L1*L13*L3)/12 - (1875*L1^2*L13*L3)/4 + (3125*L1^3*L13*L3)/6 - (25*L1*L33)/4 + (1375*L1^2*L33)/24 - (625*L1^3*L33)/4 + (3125*L1^4*L33)/24;
elseif n == 16
 bv = (125*L13*L2*L3)/3 + (125*L1*L23*L3)/3 - (625*L13*L2*L3^2)/2 - (625*L1*L23*L3^2)/2 + (3125*L13*L2*L3^3)/6 + (3125*L1*L23*L3^3)/6 + (125*L1*L2*L33)/3 - 625*L1*L2*L3*L33 + (3125*L1*L2*L3^2*L33)/2;
elseif n == 17
 bv = (125*L13*L2*L3)/4 - (625*L13*L2^2*L3)/4 + (125*L1*L23*L3)/4 - (625*L1*L2*L23*L3)/2 - (625*L13*L2*L3^2)/4 + (3125*L13*L2^2*L3^2)/4 - (625*L1*L23*L3^2)/4 + (3125*L1*L2*L23*L3^2)/2 + (125*L1*L2*L33)/4 - (625*L1*L2^2*L33)/4 - (625*L1*L2*L3*L33)/2 + (3125*L1*L2^2*L3*L33)/2;
elseif n == 18
 bv = (125*L13*L2*L3)/3 - (625*L13*L2^2*L3)/2 + (3125*L13*L2^3*L3)/6 + (125*L1*L23*L3)/3 - 625*L1*L2*L23*L3 + (3125*L1*L2^2*L23*L3)/2 + (125*L1*L2*L33)/3 - (625*L1*L2^2*L33)/2 + (3125*L1*L2^3*L33)/6;
elseif n == 19
 bv = (125*L13*L2*L3)/4 - (625*L1*L13*L2*L3)/2 + (125*L1*L23*L3)/4 - (625*L1^2*L23*L3)/4 - (625*L13*L2*L3^2)/4 + (3125*L1*L13*L2*L3^2)/2 - (625*L1*L23*L3^2)/4 + (3125*L1^2*L23*L3^2)/4 + (125*L1*L2*L33)/4 - (625*L1^2*L2*L33)/4 - (625*L1*L2*L3*L33)/2 + (3125*L1^2*L2*L3*L33)/2;
elseif n == 20
 bv = (125*L13*L2*L3)/4 - (625*L1*L13*L2*L3)/2 - (625*L13*L2^2*L3)/4 + (3125*L1*L13*L2^2*L3)/2 + (125*L1*L23*L3)/4 - (625*L1^2*L23*L3)/4 - (625*L1*L2*L23*L3)/2 + (3125*L1^2*L2*L23*L3)/2 + (125*L1*L2*L33)/4 - (625*L1^2*L2*L33)/4 - (625*L1*L2^2*L33)/4 + (3125*L1^2*L2^2*L33)/4;
elseif n == 21
 bv = (125*L13*L2*L3)/3 - 625*L1*L13*L2*L3 + (3125*L1^2*L13*L2*L3)/2 + (125*L1*L23*L3)/3 - (625*L1^2*L23*L3)/2 + (3125*L1^3*L23*L3)/6 + (125*L1*L2*L33)/3 - (625*L1^2*L2*L33)/2 + (3125*L1^3*L2*L33)/6;
    end
end

end



































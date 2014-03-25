set r / 
r12
/; 

set j / 
Q 
j91
j92
j93
j94
j95
j96
j97
j98
j99
S 
/; 

set t /t0*t33/; 

VN(h,j)=no; 
VN('Q','j91')=yes;
VN('j91','S')=yes;
VN('Q','j92')=yes;
VN('j92','S')=yes;
VN('Q','j93')=yes;
VN('j93','S')=yes;
VN('Q','j94')=yes;
VN('j94','S')=yes;
VN('Q','j95')=yes;
VN('j95','S')=yes;
VN('Q','j96')=yes;
VN('j96','S')=yes;
VN('Q','j97')=yes;
VN('j97','S')=yes;
VN('Q','j98')=yes;
VN('j98','S')=yes;
VN('Q','j99')=yes;
VN('j99','S')=yes;

VN('j91','j92')=yes; 
VN('j91','j93')=yes; 
VN('j92','j94')=yes; 
VN('j93','j97')=yes; 
VN('j94','j95')=yes; 
VN('j94','j96')=yes; 
VN('j95','j98')=yes; 
VN('j95','j99')=yes; 
VN('j96','j97')=yes; 
VN('j97','j99')=yes; 

parameter 
d(j) / 
Q   0
S   0
j91   2
j92   4
j93   3
j94   7
j95   2
j96   1
j97   5
j98   2
j99   7
/
FEZ(j) /
Q   0
S   0
j91   2
j92   6
j93   5
j94   13
j95   15
j96   14
j97   19
j98   17
j99   26
/
SEZ(j) /
Q   0
S 33
j91   2
j92   6
j93   14
j94   13
j95   19
j96   14
j97   19
j98   26
j99   26
/
Kap(r) /
r12   9
/;

k(j,r)=0;
k('j91','r12')=1;
k('j92','r12')=2;
k('j93','r12')=6;
k('j94','r12')=1;
k('j95','r12')=1;
k('j96','r12')=2;
k('j97','r12')=2;
k('j98','r12')=1;
k('j99','r12')=8;

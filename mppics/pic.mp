input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;

%outputformat := "svg";


beginfig(1) 
save u;
u:=1cm;

save p; path p[];
p1=(0,0)*u..(0,1)*u..(2,1)*u..(2,0)*u..(1,-.3)*u..cycle;
p2=(3,-.2)*u..(3,1)*u..(5,1)*u..(5,-.2)*u..(4,.3)*u..cycle;

draw p1 penbold;
draw p2 penbold;

hatchfill p1  withcolor (87, 1mm, -.5bp);
hatchfill p2  withcolor (87, 1mm, -.5bp);

label.bot(btex convex etex, (1,-.3)*u);
label.bot(btex not convex etex, (4,-.3)*u);

endfig;

beginfig(2) 
save u;
u:=1cm;

save p; path p[];
p1=(0,0)*u..(0,1)*u..(2,1)*u..(2,0)*u..(1,-.5)*u..cycle;

draw p1 penbold;

for i = 1 upto 20:
draw (point (directiontime ((1,0) rotated (18*i)) of p1) of p1)--(point (directiontime ((1,0) rotated (18*i)) of p1) of p1)+(1,0)*u rotated (18*i) penhair;
endfor 

draw
for i = 1 upto 19:
(point (directiontime ((1,0) rotated (18*i)) of p1) of p1)+(1,0)*u rotated (18*i)..
endfor
cycle penbold;

endfig;

beginfig(3) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.4,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;


beginfig(4) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.9,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;

beginfig(5) 
save u;
u:=1cm;

z.0=(0,0)*u;
z.4=(2,0)*u;
x.r=u;

save p; path p[];
p1=z.0..(-.7,1)*u..(2,1)*u..z.4;

draw p1 penbold;
draw ddline(z.0, z.4)(0.3, 0.2) pensemibold;


pair u[];

u0=(1.745,0)*u;

for i = 1 upto 20:
z[i]=point (arctime (i*(arclength p1)/20) of p1) of p1;
u[i]=u[i-1] rotated (angle(z[i]-z[i-1]-u[i-1])-angle(-u[i-1]));
draw z[i]--z[i]+u[i] penhair;
endfor
endfig;

beginfig(6) 
save u;
u:=.3cm;

draw (0,0)*u--(6,0)*u--(6,6)*u--(0,6)*u--cycle penhair;
draw (0,0)*u--(6,6)*u penbold;
draw (0,0)*u--(1,0)*u--(1,1)*u--(2,1)*u--(2,2)*u--(3,2)*u--(3,3)*u--(4,3)*u--(4,4)*u--(5,4)*u--(5,5)*u--(6,5)*u--(6,6)*u penbold;

endfig;

beginfig(7) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.c=(2,2)*u;
z.d=(0,2)*u;

draw z.a--z.b--z.c--z.d--cycle penbold;

z.u=.3[z.a,z.b];
z.v=.4[z.b,z.c];
draw z.u--z.v;

z.w=.7[z.u,z.v];
z.x=.6[z.c,z.d];
draw z.w--z.x;

z.y=.5[z.w,z.x];
z.z=.3[z.d,z.a];
draw z.y--z.z;

z.p=.5[z.y,z.z];
z.q=.9[z.d,z.a];
draw z.p--z.q;

z.r=.5[z.p,z.q];
z.s=.5[z.u,z.v];
draw z.r--z.s;

hatchfill z.r--z.s--z.w--z.y--z.p--cycle  withcolor (87, 1mm, -.5bp);
draw z.r--z.s--z.w--z.y--z.p--cycle penbold;

endfig;
end

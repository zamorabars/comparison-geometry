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

end

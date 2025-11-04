if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Chapter1-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(22.9cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -6.48, xmax = 16.42, ymin = -3.6, ymax = 8.96; /* image dimensions */
pen zzttqq = rgb(0.6,0.2,0.); pen qqwuqq = rgb(0.,0.39215686274509803,0.); pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882); pen svsvsv = rgb(0.1450980392156863,0.1450980392156863,0.1450980392156863);

draw((3.68,3.78)--(7.44,1.68)--(3.02,0.66)--cycle, linewidth(2.) + zzttqq);
draw((-1.54,3.44)--(2.42,2.62)--(4.34,4.68)--cycle, linewidth(2.) + zzttqq);
/* draw grid of horizontal/vertical lines */
pen gridstyle = linewidth(0.7) + cqcqcq; real gridx = 1., gridy = 1.; /* grid intervals */
for(real i = ceil(xmin/gridx)*gridx; i <= floor(xmax/gridx)*gridx; i += gridx)
draw((i,ymin)--(i,ymax), gridstyle);
for(real i = ceil(ymin/gridy)*gridy; i <= floor(ymax/gridy)*gridy; i += gridy)
draw((xmin,i)--(xmax,i), gridstyle);
/* end grid */

Label laxis; laxis.p = fontsize(10);
xaxis(xmin, xmax,defaultpen+svsvsv, Ticks(laxis, Step = 1., Size = 2, NoZero),EndArrow(6), above = true);
yaxis(ymin, ymax,defaultpen+svsvsv, Ticks(laxis, Step = 1., Size = 2, NoZero),EndArrow(6), above = true); /* draws axes; NoZero hides '0' label */
/* draw figures */
draw((3.68,3.78)--(7.44,1.68), linewidth(2.) + zzttqq);
draw((7.44,1.68)--(3.02,0.66), linewidth(2.) + zzttqq);
draw((3.02,0.66)--(3.68,3.78), linewidth(2.) + zzttqq);
draw((-1.54,3.44)--(2.42,2.62), linewidth(2.) + zzttqq);
draw((2.42,2.62)--(4.34,4.68), linewidth(2.) + zzttqq);
draw((4.34,4.68)--(-1.54,3.44), linewidth(2.) + zzttqq);
real f1 (real x) {return x^(2)+2+5*x^(4);}
draw(graph(f1,-6.47,16.41), linewidth(2.) + qqwuqq);
/* dots and labels */
dot((3.68,3.78),dotstyle);
label("$A$", (3.76,3.98), NE * labelscalefactor);
dot((7.44,1.68),dotstyle);
label("$B$", (7.52,1.88), NE * labelscalefactor);
dot((3.02,0.66),dotstyle);
label("$C$", (3.1,0.86), NE * labelscalefactor);
label("$c$", (5.4,2.46), NE * labelscalefactor,zzttqq);
label("$a$", (5.14,1.5), NE * labelscalefactor,zzttqq);
label("$b$", (3.66,2.16), NE * labelscalefactor,zzttqq);
dot((-1.54,3.44),dotstyle);
label("$D$", (-1.46,3.64), NE * labelscalefactor);
dot((2.42,2.62),dotstyle);
label("$E$", (2.5,2.82), NE * labelscalefactor);
dot((4.34,4.68),dotstyle);
label("$F$", (4.42,4.88), NE * labelscalefactor);
label("$f$", (0.36,2.72), NE * labelscalefactor,zzttqq);
label("$d$", (3.6,3.44), NE * labelscalefactor,zzttqq);
label("$e$", (1.32,4.38), NE * labelscalefactor,zzttqq);
label("$g$", (-1.06,8.48), NE * labelscalefactor,qqwuqq);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */

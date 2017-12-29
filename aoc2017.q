// question can be found in:
// http://adventofcode.com/
// day 1
k)+/0'@/1(&(=':).|last \)[1;]\"91212129" /part1
k)2*+/0'@/1(&=/2 0N#)\"12131415" /part2
// day 2
sum(-/)flip(max;min)@\:/:0@'("5 1 9 5";"7 5 3";"2 4 6 8")
(sum/) r*min(r=floor@;1<>)@\:r:x%/:'x:0@'("5 9 2 8";"9 4 7 3";"3 8 6 5")
// day 3
l+mod[;l]n-i*i:-1+2*l:floor 0.5*sqrt n:277678 /parr1
k){@/1(binr[;x]@)\(*:(x>|/*:)(,/|(,+\+/0^-1 0 1 .q.xprev\:*:)\[1;]@|+:)/1 1#1)}n:277678 /part2
// day 4
sum @'[{`u#x;1};;0] " " vs' read0 `:/Users/cheduo/d4.txt /part1
sum @'[{`u#asc@'x;1};;0] " " vs' read0 `:/Users/cheduo/d4.txt /part2
// day 5
init : {`l set "J"$read0`:/Users/cheduo/d5.txt} ;
init[]; -1+count{not null l x}{l[x]+:i;x+l[x]-i}\0 /part1
init[]; -1+count{not null l x}{l[x]+:i:-1 1 l[x]<3;x+l[x]-i}\0 /part2
// day 6
//
@[1+;;1]`a
@'[1+;;1](1;`a)
l cross l:-1 0 1
(raze 1+2#'til 10)#raze (reverse\')(neg\) 0 1
(!/)flip enlist (0 0;1)
('[;]/)(+;-)
{x 1+x?2017} enlist[0] {raze((;y 0;).)(0;y 1)_ x}/flip 1{1+mod[x+312;y]}\[1;]\l:1+til 201
{$[x<=z;(x+1;z;z+1);(x;y;z)}
{1+mod[x+312;y]}

117.69%6
212%6
212%
{[p;v](1+mod[p+312;v];v+1)}.(p;v)
f:{[p;v]if[i=p-1;r::v];if[i>=p;i+::1]};i:0;r:0;
i:0;r:0;50000000({[p;v]f[p;v];(1+mod[p+312;1+v];v+1)}.)\(1;1);r
l .z.s/:\:l:0|(count[`t[0]]-1)&x+-1 0 1
t:(010b;110b;001b)
t:(010b;110b;001b); res:0; l{if[`t[x;y];.[`t;(x;y);:;0b];l .z.s/:\:l:0|(count[`t[0]]-1)&x+-1 0 1; `res set 1+value `res]}/:\:l til count t; res
t:(010b;110b;001b); res:0; l{if[`t[x;y];.[`t;(x;y);:;0b];l .z.s/:\:l:0|(count[`t[0]]-1)&x+-1 0 1; 0N!res+:1]}/:\:l til count t; res
t:(010b;110b;001b); res:0;
t  :(010b;000b;001b);
res:0;l {if[t[x;y];f[x;y];0N!t;res+:1]}/:\: l: til count t; res
f:{if[t[x;y];t[x;y]:0b; (.z.s/:\:/)0|(count[t]-1)&(x;y)+\:-1 0 1]}

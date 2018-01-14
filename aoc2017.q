// question can be found in:
// http://adventofcode.com/
// day 1
k)+/0'@/1(&(=':).|last \)[1;]\"91212129" /part1
k)2*+/0'@/1(&=/2 0N#)\"12131415" /part2
// day 2
sum(-/)flip(max;min)@\:/:0@'("5 1 9 5";"7 5 3";"2 4 6 8") /part1
(sum/) r*min(r=floor@;1<>)@\:r:x%/:'x:0@'("5 9 2 8";"9 4 7 3";"3 8 6 5") /part2
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
lists : {x~distinct x}{x,enlist{x[mod[;count[x]]1+til[m]+i:x?m:max x]+:1;@[x;i;-;m]}last x}\enlist 0 2 7 0 ;
-1+count lists /part1
neg (-/)where l~\:last l:last lists /part2
// day 7
// Treetable
// http://archive.vector.org.uk/art10500340
t : flip`p`v`c!flip("S"$first@;0@[;1]@;"S"$3_)@\:/:" "vs/:ssr[;",";""]@'read0`:/Users/cheduo/d7.txt;
cv: `c`v xcol`p`v#t;
@[;`c] first trt: `p xasc cv lj 1!ungroup`c`p#t /part1
acct : update @[v;c?path;+;v] from update path: 1_'(c!p)\'[c]from @[;`p;trt[`c]^]trt;
t2   : `c`v#select from acct where 1<>(count distinct@;v) fby p,(=/)1 max\count@'path(=/)1 max\count@'path;
delta:(last/) deltas group asc exec count[c] by v from t2;
first delta+@[;`v](1!cv)@ k : select c from t2 where 1=(count;c) fby v /part2
// day 8
cmmds : ssr[;"[xyz]";upper]@'ssr/[;("inc";"dec";"==";"!=");("+:";"-:";"=";"<>")]@'read0 `:/Users/cheduo/d8.txt;
funcs : {0"{if[",x[1],";",x[0],"]}"}@'" if " vs/: cmmds;
parms : except[;`] distinct raze (@[;3] 0@)@'funcs;
set'[;0] parms; @'[;0]funcs; max 0@'parms /part1
set'[;0] parms; max {x 0;max 0@'parms}@'funcs /part2
// day 9
l:(@/)1(where(?\[1b;;].)@[;0;not]"<>"=\:)\o:ssr[;"!?";""]first read0`:/Users/cheduo/d9.txt
sum (@/)(sums sum @[;1;neg]@;where first @)@\:"{}"=\:l /part1
(neg sum ">"=l)+(-/)count@'(o;l) /part2
// day 10
l:187 254 0 81 169 219 1 190 19 102 255 56 46 32 2 216;
o:`l`p`s!(til n:256;0;0);
f:{x[`l;i]:l reverse i:mod[;count l:x`l]x[`p]+til y;x[`p`s]:(y+sum x`p`s;1+x`s);x};
xor : 0b sv (<>/) 0b vs';
knot:last@'0x0 vs' xor @'16 cut @[;`l]f/[o;]raze 64#enlist,[;17 31 73 47 23]"j"$;
(*/)2#@[;`l]o f/l /part1
knot"187,254,0,81,169,219,1,190,19,102,255,56,46,32,2,216" /part2
// day 11
0.5*sum abs 2 sum/ 0^(("ew";"ns")!\:-1 1)@\:2#'","vs first read0`:/Users/cheduo/d11.txt /part1
0.5*max sum@'abs sums sum 0^(("ew";"ns")!\:-1 1)@\:2#'","vs first read0`:/Users/cheduo/d11.txt /part2
// day 12
dic:(!/)flip(0@'"<->"vs)@'read0`:/Users/cheduo/d12.txt;
t  :((asc distinct raze@)@'dic@)/[dic];
sum 0 in' t /part1
count distinct value t /part2
// day 13
d  :("JJ";":")0:`:/Users/cheduo/d13.txt;
sum (*/)d@\:where 0=(mod/)@[;1;2*-1+] d /part1
(any 0=mod[;2*-1+d 1]d[0]+)(1+)/0 /part2
// day 14
g :(raze 0b vs' knot@)@'"ljoxqyyw-",/:string til 128;
sum sum @'g /part1
r:0;l{if[g[x;y];{if[.[g;x];.[`g;x;:;0b];.z.s@'count[g]&0|x+/:raze 1 reverse\'0,'-1 1]}(x;y);r+:1]}/:\:l:til count g;r /part2
// day 15
A:`v`m`d`c!65   16807 2147483647 4j;
B:`v`m`d`c!8921 48271 2147483647 8j;
chk: {(=/)mod[;65536]x`v};
f  : {update v:(v*m) mod d from x};
res:0;40000000{if[chk x;res+:1];f x}/(A;B);res /part1
res:0;5000000{if[chk x;res+:1];{{0<>(mod/)x`v`c}f/f[x]}@'x}(A;B);res /part2
// day 16
i : "," vs first read0`:/Users/cheduo/d16.txt;
l : 16#.Q.a;
fs:"sxp"!({(neg 0 y) rotate x};{@[x;i;:;] x reverse i:"J"$"/" vs y};{@[x;;:;r] reverse i:x?r:y except"/"});
prg : {fs[y 0;x;1_y]}/[;i];
prg l /part1
(1000000000 mod count prg\[l]) prg/ l /part2
// day 17
s:`a`p`v!(0;0;1#0);
exec v p+1 from 2017 {update raze @[;1;a,](0;p)_v from update p: 1+mod[p+3; count v], a:a+1 from x}/s /part1
s:`a`p0`p`v!(0;0;0;0);
exec v from 50000000{update p0:p0+p<p0, v:?[1=p-p0;a;v] from update a+1, p: 1+mod[p+3; a+1] from x}/s /part2
// day 18
// part2 is more suitable for oop, my solution in Q is quite long, I don't put it here.

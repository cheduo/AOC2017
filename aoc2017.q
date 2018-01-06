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
l:187 254 0 81 169 219 1 190 19 102 255 56 46 32 2 216
o:`l`p`s!(til n:256;0;0)
f:{x[`l;i]:l reverse i:mod[;count l:x`l]x[`p]+til y;x[`p`s]:(y+sum x`p`s;1+x`s);x};
xor : 0b sv (<>/) 0b vs';
knot:last@'0x0 vs' xor @'16 cut @[;`l]f/[o;]raze 64#enlist,[;17 31 73 47 23]"j"$;
(*/)2#@[;`l]o f/l /part1
knot"187,254,0,81,169,219,1,190,19,102,255,56,46,32,2,216" /part2
// day 11
0.5*sum abs 2 sum/ 0^(("ew";"ns")!\:-1 1)@\:2#'","vs first read0`:/Users/cheduo/d11.txt /part1
0.5*max sum@'abs sums sum 0^(("ew";"ns")!\:-1 1)@\:2#'","vs first read0`:/Users/cheduo/d11.txt /part2

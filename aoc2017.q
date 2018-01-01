// question can be found in:
// http://adventofcode.com/
// day 1
k)+/0'@/1(&(=':).|last \)[1;]\"91212129" /part1
k)2*+/0'@/1(&=/2 0N#)\"12131415" /part2
// day 2
sum(-/)flip(max;min)@\:/:0@'("5 1 9 5";"7 5 3";"2 4 6 8") /parr1
(sum/) r*min(r=floor@;1<>)@\:r:x%/:'x:0@'("5 9 2 8";"9 4 7 3";"3 8 6 5") /parr2
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
funcs : {0"{if[",x[1],";",x[0],"]}"}@'" if " vs/:ssr[;"[xyz]";upper]@'ssr/[;("inc";"dec";"==";"!=");("+:";"-:";"=";"<>")]@'read0 `:/Users/cheduo/d7.txt;
parms : except[;`] distinct raze (@[;3] 0@)@'funcs;
set'[;0] parms; @'[;0]funcs; max 0@'parms /part1
set'[;0] parms; max {x 0;max 0@'parms}@'funcs /part2

# Typst sym 与 LaTeX 关键字对照

- 来源: https://typst.app/docs/reference/symbols/sym/
- 页面标题: General Symbols - Typst Documentation
- 抓取日期: 2026-06-01
- Typst 关键字总数: 1154
- 含官方 LaTeX 名称的条目数: 903
- 提取规则: 仅提取页面中 `<li id="symbol-...">` 的条目, 已排除搜索框 `symbol-search`.

## 使用方式

- 每一行都按 `Typst | LaTeX` 记录. 如果第二列是 `-`, 表示官方页面没有给出 LaTeX 名称.
- 从 LaTeX 迁移到 Typst 时, 可先按 LaTeX 命令搜索, 例如 `rg "\\alpha$" references/typst-sym-keywords.md`.
- 按 Typst 关键字搜索时, 可用 `rg "^alpha \|" references/typst-sym-keywords.md` 或 `rg "^arrow\." references/typst-sym-keywords.md`.
- 对空白符和零宽符号, 以第一列的 Typst 内部关键字为准, 不要只看文档页面上的展示别名.

## 显示别名

- `hyph.soft` -> `shy`
- `space` -> `␣`
- `space.nobreak` -> `nbsp`
- `space.nobreak.narrow` -> `nnbsp`
- `space.en` -> `ensp`
- `space.quad` -> `emsp`
- `space.third` -> `⅓emsp`
- `space.quarter` -> `¼emsp`
- `space.sixth` -> `⅙emsp`
- `space.med` -> `mmsp`
- `space.fig` -> `numsp`
- `space.punct` -> `puncsp`
- `space.thin` -> `thinsp`
- `space.hair` -> `hairsp`
- `wj` -> `wjoin`
- `zws` -> `zwsp`

## A

```text
AA | -
Alpha | \mupAlpha
acute | -
acute.double | -
afghani | -
alef | -
aleph | -
alpha | \mupalpha
amp | \mathampersand
amp.inv | \upand
and | \wedge
and.big | \bigwedge
and.curly | \curlywedge
and.dot | \wedgedot
and.double | \Wedge
angle | \angle
angle.l | \langle
angle.l.curly | \lcurvyangle
angle.l.dot | \langledot
angle.l.double | \lAngle
angle.r | \rangle
angle.r.curly | \rcurvyangle
angle.r.dot | \rangledot
angle.r.double | \rAngle
angle.acute | \angdnr
angle.arc | \measuredangle
angle.arc.rev | \measuredangleleft
angle.azimuth | \rangledownzigzagarrow
angle.obtuse | \wideangledown
angle.oblique | \wideangledown
angle.rev | \revangle
angle.right | \rightangle
angle.right.rev | -
angle.right.arc | \measuredrightangle
angle.right.dot | \rightanglemdot
angle.right.square | \rightanglesqr
angle.right.sq | \rightanglesqr
angle.s | \angles
angle.spatial | \threedangle
angle.spheric | \sphericalangle
angle.spheric.rev | \gtlpar
angle.spheric.t | \sphericalangleup
angle.spheric.top | \sphericalangleup
angstrom | -
angzarr | \rangledownzigzagarrow
approx | \approx
approx.eq | \approxeq
approx.not | \napprox
arrow.r | \rightarrow
arrow.r.long.bar | \longmapsto
arrow.r.bar | \mapsto
arrow.r.curve | \rightdowncurvedarrow
arrow.r.turn | -
arrow.r.dashed | \rightdasharrow
arrow.r.dotted | \rightdotarrow
arrow.r.double | \Rightarrow
arrow.r.double.bar | \Mapsto
arrow.r.double.long | \Longrightarrow
arrow.r.double.long.bar | \Longmapsto
arrow.r.double.not | \nRightarrow
arrow.r.double.struck | \nvRightarrow
arrow.r.filled | -
arrow.r.hook | \hookrightarrow
arrow.r.long | \longrightarrow
arrow.r.long.squiggly | \longrightsquigarrow
arrow.r.loop | \looparrowright
arrow.r.not | \nrightarrow
arrow.r.quad | \RRightarrow
arrow.r.squiggly | \rightsquigarrow
arrow.r.stop | \rightarrowbar
arrow.r.stroked | \rightwhitearrow
arrow.r.struck | \nvrightarrow
arrow.r.dstruck | \nVrightarrow
arrow.r.tail | \rightarrowtail
arrow.r.tail.struck | \nvrightarrowtail
arrow.r.tail.dstruck | \nVrightarrowtail
arrow.r.tilde | \similarrightarrow
arrow.r.triple | \Rrightarrow
arrow.r.twohead | \twoheadrightarrow
arrow.r.twohead.bar | \twoheadmapsto
arrow.r.twohead.struck | \nvtwoheadrightarrow
arrow.r.twohead.dstruck | \nVtwoheadrightarrow
arrow.r.twohead.tail | \twoheadrightarrowtail
arrow.r.twohead.tail.struck | \nvtwoheadrightarrowtail
arrow.r.twohead.tail.dstruck | \nVtwoheadrightarrowtail
arrow.r.open | \rightarrowtriangle
arrow.r.wave | \rightwavearrow
arrow.l | \leftarrow
arrow.l.bar | \mapsfrom
arrow.l.curve | \leftdowncurvedarrow
arrow.l.turn | -
arrow.l.dashed | \leftdasharrow
arrow.l.dotted | \leftdotarrow
arrow.l.double | \Leftarrow
arrow.l.double.bar | \Mapsfrom
arrow.l.double.long | \Longleftarrow
arrow.l.double.long.bar | \Longmapsfrom
arrow.l.double.not | \nLeftarrow
arrow.l.double.struck | \nvLeftarrow
arrow.l.filled | -
arrow.l.hook | \hookleftarrow
arrow.l.long | \longleftarrow
arrow.l.long.bar | \longmapsfrom
arrow.l.long.squiggly | \longleftsquigarrow
arrow.l.loop | \looparrowleft
arrow.l.not | \nleftarrow
arrow.l.quad | \LLeftarrow
arrow.l.squiggly | \leftsquigarrow
arrow.l.stop | \barleftarrow
arrow.l.stroked | \leftwhitearrow
arrow.l.struck | \nvleftarrow
arrow.l.dstruck | \nVleftarrow
arrow.l.tail | \leftarrowtail
arrow.l.tail.struck | \nvleftarrowtail
arrow.l.tail.dstruck | \nVleftarrowtail
arrow.l.tilde | \similarleftarrow
arrow.l.triple | \Lleftarrow
arrow.l.twohead | \twoheadleftarrow
arrow.l.twohead.bar | \twoheadmapsfrom
arrow.l.twohead.struck | \nvtwoheadleftarrow
arrow.l.twohead.dstruck | \nVtwoheadleftarrow
arrow.l.twohead.tail | \twoheadleftarrowtail
arrow.l.twohead.tail.struck | \nvtwoheadleftarrowtail
arrow.l.twohead.tail.dstruck | \nVtwoheadleftarrowtail
arrow.l.open | \leftarrowtriangle
arrow.l.wave | \leftwavearrow
arrow.t | \uparrow
arrow.t.bar | \mapsup
arrow.t.curve | \uprightcurvearrow
arrow.t.turn | -
arrow.t.dashed | \updasharrow
arrow.t.double | \Uparrow
arrow.t.filled | -
arrow.t.quad | \UUparrow
arrow.t.stop | \baruparrow
arrow.t.stroked | \upwhitearrow
arrow.t.struck | \uparrowbarred
arrow.t.dstruck | \nHuparrow
arrow.t.triple | \Uuparrow
arrow.t.twohead | \twoheaduparrow
arrow.b | \downarrow
arrow.b.bar | \mapsdown
arrow.b.curve | \downrightcurvedarrow
arrow.b.turn | -
arrow.b.dashed | \downdasharrow
arrow.b.double | \Downarrow
arrow.b.filled | -
arrow.b.quad | \DDownarrow
arrow.b.stop | \downarrowbar
arrow.b.stroked | \downwhitearrow
arrow.b.struck | \downarrowbarred
arrow.b.dstruck | \nHdownarrow
arrow.b.triple | \Ddownarrow
arrow.b.twohead | \twoheaddownarrow
arrow.l.r | \leftrightarrow
arrow.l.r.double | \Leftrightarrow
arrow.l.r.double.long | \Longleftrightarrow
arrow.l.r.double.not | \nLeftrightarrow
arrow.l.r.double.struck | \nvLeftrightarrow
arrow.l.r.filled | -
arrow.l.r.long | \longleftrightarrow
arrow.l.r.not | \nleftrightarrow
arrow.l.r.stroked | -
arrow.l.r.struck | \nvleftrightarrow
arrow.l.r.dstruck | \nVleftrightarrow
arrow.l.r.open | \leftrightarrowtriangle
arrow.l.r.wave | \leftrightsquigarrow
arrow.t.b | \updownarrow
arrow.t.b.double | \Updownarrow
arrow.t.b.filled | -
arrow.t.b.stroked | -
arrow.tr | \nearrow
arrow.tr.double | \Nearrow
arrow.tr.filled | -
arrow.tr.hook | \hknearrow
arrow.tr.stroked | -
arrow.br | \searrow
arrow.br.double | \Searrow
arrow.br.filled | -
arrow.br.hook | \hksearrow
arrow.br.stroked | -
arrow.tl | \nwarrow
arrow.tl.double | \Nwarrow
arrow.tl.filled | -
arrow.tl.hook | \hknwarrow
arrow.tl.stroked | -
arrow.bl | \swarrow
arrow.bl.double | \Swarrow
arrow.bl.filled | -
arrow.bl.hook | \hkswarrow
arrow.bl.stroked | -
arrow.tl.br | \nwsearrow
arrow.tr.bl | \neswarrow
arrow.ccw | \acwopencirclearrow
arrow.ccw.half | \curvearrowleft
arrow.cw | \cwopencirclearrow
arrow.cw.half | \curvearrowright
arrow.zigzag | \downzigzagarrow
arrowhead.t | -
arrowhead.b | -
arrows.rr | \rightrightarrows
arrows.ll | \leftleftarrows
arrows.tt | \upuparrows
arrows.bb | \downdownarrows
arrows.lr | \leftrightarrows
arrows.lr.stop | \barleftarrowrightarrowbar
arrows.rl | \rightleftarrows
arrows.tb | \updownarrows
arrows.bt | \downuparrows
arrows.rrr | \rightthreearrows
arrows.lll | \leftthreearrows
ast.op | \ast
ast.op.o | \circledast
ast.basic | -
ast.low | -
ast.double | -
ast.triple | -
ast.small | -
ast.circle | \circledast
ast.square | \boxast
asymp | \asymp
asymp.not | \nasymp
at | \mathatsign
```

## B

```text
BB | -
Beta | \mupBeta
backslash | \backslash
backslash.o | \obslash
backslash.circle | \obslash
backslash.not | \rsolbar
bag.l | \lbag
bag.r | \rbag
baht | -
ballot | -
ballot.cross | -
ballot.check | -
ballot.check.heavy | -
bar.v | \vert
bar.v.double | \Vert
bar.v.triple | \Vvert
bar.v.broken | -
bar.v.o | \circledvert
bar.v.circle | \circledvert
bar.h | \horizbar
because | \because
bet | -
beta | \mupbeta
beta.alt | -
beth | -
bitcoin | -
bot | \bot
brace.l | \lbrace
brace.l.stroked | \lBrace
brace.l.double | \lBrace
brace.r | \rbrace
brace.r.stroked | \rBrace
brace.r.double | \rBrace
brace.t | \overbrace
brace.b | \underbrace
bracket.l | \lbrack
bracket.l.tick.t | \lbrackultick
bracket.l.tick.b | \lbracklltick
bracket.l.stroked | \lBrack
bracket.l.double | \lBrack
bracket.r | \rbrack
bracket.r.tick.t | \rbrackurtick
bracket.r.tick.b | \rbracklrtick
bracket.r.stroked | \rBrack
bracket.r.double | \rBrack
bracket.t | \overbracket
bracket.b | \underbracket
breve | -
bullet | \smblkcircle
bullet.op | \vysmblkcircle
bullet.o | \circledbullet
bullet.stroked | \smwhtcircle
bullet.stroked.o | \circledwhitebullet
bullet.hole | \inversebullet
bullet.hyph | \hyphenbullet
bullet.tri | -
bullet.l | -
bullet.r | -
```

## C

```text
CC | \BbbC
Chi | \mupChi
caret | \caretinsert
caron | -
cc | -
cc.by | -
cc.nc | -
cc.nd | \circledequal
cc.public | -
cc.sa | -
cc.zero | -
cedi | -
ceil.l | \lceil
ceil.r | \rceil
cent | -
checkmark | \checkmark
checkmark.light | -
checkmark.heavy | -
chevron.l | \langle
chevron.l.curly | \lcurvyangle
chevron.l.dot | \langledot
chevron.l.closed | \llangle
chevron.l.double | \lAngle
chevron.r | \rangle
chevron.r.curly | \rcurvyangle
chevron.r.dot | \rangledot
chevron.r.closed | \rrangle
chevron.r.double | \rAngle
chi | \mupchi
circle.stroked | \mdlgwhtcircle
circle.stroked.tiny | \vysmwhtcircle
circle.stroked.small | \mdsmwhtcircle
circle.stroked.big | \lgwhtcircle
circle.filled | \mdlgblkcircle
circle.filled.tiny | \mdsmblkcircle
circle.filled.small | \vysmblkcircle
circle.filled.big | \lgblkcircle
circle.dotted | \dottedcircle
circle.nested | \circledcirc
co | -
colon | \mathcolon
colon.currency | -
colon.double | \Colon
colon.tri | -
colon.tri.op | \threedotcolon
colon.eq | \coloneq
colon.double.eq | \Coloneq
comma | \mathcomma
comma.inv | -
comma.rev | -
complement | \complement
compose | \vysmwhtcircle
compose.o | \circledcirc
convolve | \ast
convolve.o | \circledast
copyleft | -
copyright | -
copyright.sound | -
corner.l.t | \ulcorner
corner.l.b | \llcorner
corner.r.t | \urcorner
corner.r.b | \lrcorner
crossmark | -
crossmark.heavy | -
currency | -
```

## D

```text
DD | -
Delta | \mupDelta
Digamma | \upDigamma
dagger | \dagger
dagger.double | \ddagger
dagger.triple | -
dagger.l | -
dagger.r | -
dagger.inv | -
dalet | -
daleth | -
dash.en | -
dash.em | -
dash.em.two | -
dash.em.three | -
dash.fig | -
dash.colon | \dashcolon
dash.o | \circleddash
dash.circle | \circleddash
dash.wave | -
dash.wave.double | \hzigzag
degree | -
delta | \mupdelta
diaer | -
diameter | \diameter
diamond.stroked | \mdlgwhtdiamond
diamond.stroked.small | \smwhtdiamond
diamond.stroked.medium | \mdwhtdiamond
diamond.stroked.dot | \diamondcdot
diamond.filled | \mdlgblkdiamond
diamond.filled.medium | \mdblkdiamond
diamond.filled.small | \smblkdiamond
die.six | \dicevi
die.five | \dicev
die.four | \diceiv
die.three | \diceiii
die.two | \diceii
die.one | \dicei
diff | \partial
digamma | \updigamma
div | \div
div.o | \odiv
div.slanted.o | \odotslashdot
div.circle | \odiv
divides | \mid
divides.not | \nmid
divides.not.rev | \revnmid
divides.struck | -
dollar | \mathdollar
dong | -
dorome | -
dot.op | \cdot
dot.basic | \mathperiod
dot.c | \cdotp
dot.o | \odot
dot.o.big | \bigodot
dot.circle | \odot
dot.circle.big | \bigodot
dot.square | \boxdot
dot.double | -
dot.triple | \dddot
dot.quad | \ddddot
dotless.i | -
dotless.j | -
dots.h.c | \unicodecdots
dots.h | \unicodeellipsis
dots.v | \vdots
dots.down | \ddots
dots.up | \adots
dram | -
```

## E

```text
EE | -
Epsilon | \mupEpsilon
Eta | \mupEta
earth | -
earth.alt | -
ell | \ell
ellipse.stroked.h | \whthorzoval
ellipse.stroked.v | \whtvertoval
ellipse.filled.h | \blkhorzoval
ellipse.filled.v | \blkvertoval
emptyset | \varnothing
emptyset.arrow.r | \emptysetoarr
emptyset.arrow.l | \emptysetoarrl
emptyset.bar | \emptysetobar
emptyset.circle | \emptysetocirc
emptyset.rev | \revemptyset
epsilon | \mupvarepsilon
epsilon.alt | \mupepsilon
epsilon.alt.rev | \upbackepsilon
eq | \equal
eq.star | \stareq
eq.o | \circledequal
eq.circle | \circledequal
eq.colon | \eqcolon
eq.dots | \Doteq
eq.dots.down | \fallingdotseq
eq.dots.up | \risingdotseq
eq.def | \eqdef
eq.delta | \triangleq
eq.equi | \veeeq
eq.est | \wedgeq
eq.gt | \eqgtr
eq.lt | \eqless
eq.m | \measeq
eq.not | \ne
eq.prec | \curlyeqprec
eq.quest | \questeq
eq.small | -
eq.succ | \curlyeqsucc
eq.triple | \equiv
eq.triple.not | \nequiv
eq.quad | \Equiv
equiv | \equiv
equiv.not | \nequiv
errorbar.square.stroked | \errbarsquare
errorbar.square.filled | \errbarblacksquare
errorbar.diamond.stroked | \errbardiamond
errorbar.diamond.filled | \errbarblackdiamond
errorbar.circle.stroked | \errbarcircle
errorbar.circle.filled | \errbarblackcircle
eta | \mupeta
euro | \euro
excl | \mathexclam
excl.double | \Exclam
excl.inv | -
excl.quest | -
exists | \exists
exists.not | \nexists
```

## F

```text
FF | -
fence.l | \lvzigzag
fence.l.double | \Lvzigzag
fence.r | \rvzigzag
fence.r.double | \Rvzigzag
fence.dotted | \fourvdots
flat | \flat
flat.t | -
flat.b | -
flat.double | -
flat.quarter | -
floor.l | \lfloor
floor.r | \rfloor
floral | -
floral.l | -
floral.r | -
forall | \forall
forces | \Vdash
forces.not | \nVdash
franc | -
frown | \frown
```

## G

```text
GG | -
Gamma | \mupGamma
gamma | \mupgamma
gimel | -
gimmel | -
gradient | \nabla
grave | -
gt | \greater
gt.o | \ogreaterthan
gt.circle | \ogreaterthan
gt.dot | \gtrdot
gt.approx | \gtrapprox
gt.double | \gg
gt.eq | \geq
gt.eq.slant | \geqslant
gt.eq.lt | \gtreqless
gt.eq.not | \ngeq
gt.equiv | \geqq
gt.lt | \gtrless
gt.lt.not | \ngtrless
gt.neq | \gneq
gt.napprox | \gnapprox
gt.nequiv | \gneqq
gt.not | \ngtr
gt.ntilde | \gnsim
gt.small | -
gt.tilde | \gtrsim
gt.tilde.not | \ngtrsim
gt.tri | \vartriangleright
gt.tri.eq | \trianglerighteq
gt.tri.eq.not | \ntrianglerighteq
gt.tri.not | \nvartriangleright
gt.triple | \ggg
gt.triple.nested | \gggnest
guarani | -
```

## H

```text
HH | \BbbH
harpoon.rt | \rightharpoonup
harpoon.rt.bar | \barrightharpoonup
harpoon.rt.stop | \rightharpoonupbar
harpoon.rb | \rightharpoondown
harpoon.rb.bar | \barrightharpoondown
harpoon.rb.stop | \rightharpoondownbar
harpoon.lt | \leftharpoonup
harpoon.lt.bar | \leftharpoonupbar
harpoon.lt.stop | \barleftharpoonup
harpoon.lb | \leftharpoondown
harpoon.lb.bar | \leftharpoondownbar
harpoon.lb.stop | \barleftharpoondown
harpoon.tl | \upharpoonleft
harpoon.tl.bar | \upharpoonleftbar
harpoon.tl.stop | \barupharpoonleft
harpoon.tr | \upharpoonright
harpoon.tr.bar | \upharpoonrightbar
harpoon.tr.stop | \barupharpoonright
harpoon.bl | \downharpoonleft
harpoon.bl.bar | \bardownharpoonleft
harpoon.bl.stop | \downharpoonleftbar
harpoon.br | \downharpoonright
harpoon.br.bar | \bardownharpoonright
harpoon.br.stop | \downharpoonrightbar
harpoon.lt.rt | \leftrightharpoonupup
harpoon.lb.rb | \leftrightharpoondowndown
harpoon.lb.rt | \leftrightharpoondownup
harpoon.lt.rb | \leftrightharpoonupdown
harpoon.tl.bl | \updownharpoonleftleft
harpoon.tr.br | \updownharpoonrightright
harpoon.tl.br | \updownharpoonleftright
harpoon.tr.bl | \updownharpoonrightleft
harpoons.rtrb | \rightharpoonsupdown
harpoons.blbr | \downharpoonsleftright
harpoons.bltr | \downupharpoonsleftright
harpoons.lbrb | \leftrightharpoonsdown
harpoons.ltlb | \leftharpoonsupdown
harpoons.ltrb | \leftrightharpoons
harpoons.ltrt | \leftrightharpoonsup
harpoons.rblb | \rightleftharpoonsdown
harpoons.rtlb | \rightleftharpoons
harpoons.rtlt | \rightleftharpoonsup
harpoons.tlbr | \updownharpoonsleftright
harpoons.tltr | \upharpoonsleftright
hash | \mathoctothorpe
hat | -
hexa.stroked | \varhexagon
hexa.filled | \varhexagonblack
hourglass.stroked | \hourglass
hourglass.filled | \blackhourglass
hryvnia | -
hyph | \mathhyphen
hyph.minus | -
hyph.nobreak | -
hyph.point | -
hyph.soft | -
```

## I

```text
II | -
Im | \Im
Iota | \mupIota
image | \imageof
in | \in
in.not | \notin
in.rev | \ni
in.rev.not | \nni
in.rev.small | \smallni
in.small | \smallin
infinity | \infty
infinity.bar | \nvinfty
infinity.incomplete | \iinfin
infinity.tie | \tieinfty
integral | \int
integral.arrow.hook | \intlarhk
integral.ccw | \awint
integral.cont | \oint
integral.cont.ccw | \ointctrclockwise
integral.cont.cw | \varointclockwise
integral.cw | \intclockwise
integral.dash | \intbar
integral.dash.double | \intBar
integral.double | \iint
integral.quad | \iiiint
integral.inter | \intcap
integral.sect | \intcap
integral.slash | \fint
integral.square | \sqint
integral.surf | \oiint
integral.times | \intx
integral.triple | \iiint
integral.union | \intcup
integral.vol | \oiiint
inter | \cap
inter.and | \capwedge
inter.big | \bigcap
inter.dot | \capdot
inter.double | \Cap
inter.sq | \sqcap
inter.sq.big | \bigsqcap
inter.sq.double | \Sqcap
interleave | \interleave
interleave.big | \biginterleave
interleave.struck | \nhVvert
interrobang | -
interrobang.inv | -
iota | \mupiota
iota.inv | \turnediota
```

## J

```text
JJ | -
join | \Join
join.r | \rightouterjoin
join.l | \leftouterjoin
join.l.r | \fullouterjoin
jupiter | -
```

## K

```text
KK | -
Kai | -
Kappa | \mupKappa
kai | -
kappa | \mupkappa
kappa.alt | \mupvarkappa
kip | -
```

## L

```text
LL | -
Lambda | \mupLambda
lambda | \muplambda
laplace | \increment
lari | -
lat | \lat
lat.eq | \late
lira | -
lozenge.stroked | \mdlgwhtlozenge
lozenge.stroked.small | \smwhtlozenge
lozenge.stroked.medium | \mdwhtlozenge
lozenge.filled | \mdlgblklozenge
lozenge.filled.small | \smblklozenge
lozenge.filled.medium | \mdblklozenge
lrm | -
lt | \less
lt.o | \olessthan
lt.circle | \olessthan
lt.dot | \lessdot
lt.approx | \lessapprox
lt.double | \ll
lt.eq | \leq
lt.eq.slant | \leqslant
lt.eq.gt | \lesseqgtr
lt.eq.not | \nleq
lt.equiv | \leqq
lt.gt | \lessgtr
lt.gt.not | \nlessgtr
lt.neq | \lneq
lt.napprox | \lnapprox
lt.nequiv | \lneqq
lt.not | \nless
lt.ntilde | \lnsim
lt.small | -
lt.tilde | \lesssim
lt.tilde.not | \nlesssim
lt.tri | \vartriangleleft
lt.tri.eq | \trianglelefteq
lt.tri.eq.not | \ntrianglelefteq
lt.tri.not | \nvartriangleleft
lt.triple | \lll
lt.triple.nested | \lllnest
```

## M

```text
MM | -
Mu | \mupMu
macron | -
maltese | \maltese
manat | -
mapsto | \mapsto
mapsto.long | \longmapsto
mars | \male
mercury | -
minus | \minus
minus.o | \ominus
minus.circle | \ominus
minus.dot | \dotminus
minus.plus | \mp
minus.square | \boxminus
minus.tilde | \eqsim
minus.triangle | \triangleminus
miny | \tminus
models | \models
mu | \mupmu
multimap | \multimap
multimap.double | \dualmap
mustache.l | \lmoustache
mustache.r | \rmoustache
```

## N

```text
NN | \BbbN
Nu | \mupNu
nabla | \nabla
naira | -
natural | \natural
natural.t | -
natural.b | -
neptune | -
neptune.alt | -
not | \neg
note.up | -
note.down | -
note.whole | -
note.half | -
note.quarter | -
note.quarter.alt | \quarternote
note.eighth | -
note.eighth.alt | \eighthnote
note.eighth.beamed | \twonotes
note.sixteenth | -
note.sixteenth.beamed | -
note.grace | -
note.grace.slash | -
nothing | \varnothing
nothing.arrow.r | \emptysetoarr
nothing.arrow.l | \emptysetoarrl
nothing.bar | \emptysetobar
nothing.circle | \emptysetocirc
nothing.rev | \revemptyset
nu | \mupnu
numero | -
```

## O

```text
OO | -
Omega | \mupOmega
Omega.inv | \mho
Omicron | \mupOmicron
omega | \mupomega
omicron | \mupomicron
oo | \infty
or | \vee
or.big | \bigvee
or.curly | \curlyvee
or.dot | \veedot
or.double | \Vee
original | \origof
```

## P

```text
PP | \BbbP
Phi | \mupPhi
Pi | \mupPi
Psi | \mupPsi
parallel | \parallel
parallel.struck | \nhpar
parallel.o | \circledparallel
parallel.circle | \circledparallel
parallel.eq | \equalparallel
parallel.equiv | \equivVert
parallel.not | \nparallel
parallel.slanted.eq | \eparsl
parallel.slanted.eq.tilde | \smeparsl
parallel.slanted.equiv | \eqvparsl
parallel.tilde | \parsim
parallelogram.stroked | \parallelogram
parallelogram.filled | \parallelogramblack
paren.l | \lparen
paren.l.flat | \lgroup
paren.l.closed | \llparenthesis
paren.l.stroked | \lParen
paren.l.double | \lParen
paren.r | \rparen
paren.r.flat | \rgroup
paren.r.closed | \rrparenthesis
paren.r.stroked | \rParen
paren.r.double | \rParen
paren.t | \overparen
paren.b | \underparen
partial | \partial
pataca | \mathdollar
penta.stroked | \pentagon
penta.filled | \pentagonblack
percent | \mathpercent
permille | -
permyriad | -
perp | \perp
perp.o | \operp
perp.circle | \operp
peso | \mathdollar
peso.philippine | -
phi | \mupvarphi
phi.alt | \mupphi
pi | \muppi
pi.alt | \mupvarpi
pilcrow | \mathparagraph
pilcrow.rev | -
planck | -
planck.reduce | -
plus | \mathplus
plus.o | \oplus
plus.o.l | \opluslhrim
plus.o.r | \oplusrhrim
plus.o.arrow | \rightarrowonoplus
plus.o.big | \bigoplus
plus.circle | \oplus
plus.circle.arrow | \rightarrowonoplus
plus.circle.big | \bigoplus
plus.dot | \dotplus
plus.double | \doubleplus
plus.minus | \pm
plus.small | -
plus.square | \boxplus
plus.triangle | \triangleplus
plus.triple | \tripleplus
pound | \mathsterling
power.standby | -
power.on | -
power.off | -
power.on.off | -
power.sleep | -
prec | \prec
prec.approx | \precapprox
prec.curly.eq | \preccurlyeq
prec.curly.eq.not | \npreccurlyeq
prec.double | \Prec
prec.eq | \preceq
prec.equiv | \preceqq
prec.napprox | \precnapprox
prec.neq | \precneq
prec.nequiv | \precneqq
prec.not | \nprec
prec.ntilde | \precnsim
prec.tilde | \precsim
prime | \prime
prime.rev | \backprime
prime.double | \dprime
prime.double.rev | \backdprime
prime.triple | \trprime
prime.triple.rev | \backtrprime
prime.quad | \qprime
product | \prod
product.co | \coprod
prop | \propto
psi | \muppsi
```

## Q

```text
QQ | \BbbQ
qed | \QED
quest | \mathquestion
quest.double | \Question
quest.excl | -
quest.inv | -
quote.double | -
quote.single | -
quote.l.double | -
quote.l.single | -
quote.r.double | -
quote.r.single | -
quote.chevron.l.double | -
quote.chevron.l.single | -
quote.chevron.r.double | -
quote.chevron.r.single | -
quote.angle.l.double | -
quote.angle.l.single | -
quote.angle.r.double | -
quote.angle.r.single | -
quote.high.double | -
quote.high.single | -
quote.low.double | -
quote.low.single | -
```

## R

```text
RR | \BbbR
Re | \Re
Rho | \mupRho
ratio | \mathratio
rect.stroked.h | \hrectangle
rect.stroked.v | \vrectangle
rect.filled.h | \hrectangleblack
rect.filled.v | \vrectangleblack
refmark | -
rest.whole | -
rest.multiple | -
rest.multiple.measure | -
rest.half | -
rest.quarter | -
rest.eighth | -
rest.sixteenth | -
rho | \muprho
rho.alt | \mupvarrho
riel | -
rlm | -
ruble | -
rupee.indian | -
rupee.generic | -
rupee.tamil | -
rupee.wancho | -
```

## S

```text
SS | -
Sha | -
Sigma | \mupSigma
saturn | -
sect | \cap
sect.and | \capwedge
sect.big | \bigcap
sect.dot | \capdot
sect.double | \Cap
sect.sq | \sqcap
sect.sq.big | \bigsqcap
sect.sq.double | \Sqcap
section | \mathsection
semi | \mathsemicolon
semi.inv | -
semi.rev | -
sha | -
sharp | \sharp
sharp.t | -
sharp.b | -
sharp.double | -
sharp.quarter | -
shekel | -
shell.l | \lbrbrak
shell.l.stroked | \Lbrbrak
shell.l.filled | \lblkbrbrak
shell.l.double | \Lbrbrak
shell.r | \rbrbrak
shell.r.stroked | \Rbrbrak
shell.r.filled | \rblkbrbrak
shell.r.double | \Rbrbrak
shell.t | \obrbrak
shell.b | \ubrbrak
shin | -
sigma | \mupsigma
sigma.alt | \mupvarsigma
slash | \mathslash
slash.o | \oslash
slash.double | \sslash
slash.triple | \trslash
slash.big | \xsol
smash | \smashtimes
smile | \smile
smt | \smt
smt.eq | \smte
som | -
space | -
space.nobreak | -
space.nobreak.narrow | -
space.en | -
space.quad | -
space.third | -
space.quarter | -
space.sixth | -
space.med | -
space.fig | -
space.punct | -
space.thin | -
space.hair | -
square.stroked | \mdlgwhtsquare
square.stroked.tiny | \smwhtsquare
square.stroked.small | \mdsmwhtsquare
square.stroked.medium | \mdwhtsquare
square.stroked.big | \lgwhtsquare
square.stroked.dotted | \dottedsquare
square.stroked.rounded | \squoval
square.filled | \mdlgblksquare
square.filled.tiny | \smblksquare
square.filled.small | \mdsmblksquare
square.filled.medium | \mdblksquare
square.filled.big | \lgblksquare
star.op | \star
star.stroked | \bigwhitestar
star.filled | \bigstar
subset | \subset
subset.dot | \subsetdot
subset.double | \Subset
subset.eq | \subseteq
subset.eq.not | \nsubseteq
subset.eq.sq | \sqsubseteq
subset.eq.sq.not | \nsqsubseteq
subset.neq | \subsetneq
subset.not | \nsubset
subset.sq | \sqsubset
subset.sq.neq | \sqsubsetneq
succ | \succ
succ.approx | \succapprox
succ.curly.eq | \succcurlyeq
succ.curly.eq.not | \nsucccurlyeq
succ.double | \Succ
succ.eq | \succeq
succ.equiv | \succeqq
succ.napprox | \succnapprox
succ.neq | \succneq
succ.nequiv | \succneqq
succ.not | \nsucc
succ.ntilde | \succnsim
succ.tilde | \succsim
suit.club.filled | \clubsuit
suit.club.stroked | \varclubsuit
suit.diamond.filled | \vardiamondsuit
suit.diamond.stroked | \diamondsuit
suit.heart.filled | \varheartsuit
suit.heart.stroked | \heartsuit
suit.spade.filled | \spadesuit
suit.spade.stroked | \varspadesuit
sum | \sum
sum.integral | \sumint
sun | \astrosun
supset | \supset
supset.dot | \supsetdot
supset.double | \Supset
supset.eq | \supseteq
supset.eq.not | \nsupseteq
supset.eq.sq | \sqsupseteq
supset.eq.sq.not | \nsqsupseteq
supset.neq | \supsetneq
supset.not | \nsupset
supset.sq | \sqsupset
supset.sq.neq | \sqsupsetneq
```

## T

```text
TT | -
Tau | \mupTau
Theta | \mupTheta
Theta.alt | \mupvarTheta
tack.r | \vdash
tack.r.not | \nvdash
tack.r.long | \vlongdash
tack.r.short | \assert
tack.r.double | \vDash
tack.r.double.not | \nvDash
tack.l | \dashv
tack.l.long | \longdashv
tack.l.short | \shortlefttack
tack.l.double | \Dashv
tack.t | \bot
tack.t.big | \bigbot
tack.t.double | \Vbar
tack.t.short | \shortuptack
tack.b | \top
tack.b.big | \bigtop
tack.b.double | \barV
tack.b.short | \shortdowntack
tack.l.r | \dashVdash
taka | -
taman | -
tau | \muptau
tenge | -
therefore | \therefore
theta | \muptheta
theta.alt | \mupvartheta
tilde.op | \sim
tilde.basic | -
tilde.dot | \dotsim
tilde.eq | \sime
tilde.eq.not | \nsimeq
tilde.eq.rev | \backsimeq
tilde.equiv | \cong
tilde.equiv.not | \ncong
tilde.nequiv | \simneqq
tilde.not | \nsim
tilde.rev | \backsim
tilde.rev.equiv | \backcong
tilde.triple | \approxident
times | \times
times.big | \bigtimes
times.o | \otimes
times.o.l | \otimeslhrim
times.o.r | \otimesrhrim
times.o.hat | \otimeshat
times.o.big | \bigotimes
times.circle | \otimes
times.circle.big | \bigotimes
times.div | \divideontimes
times.three.l | \leftthreetimes
times.three.r | \rightthreetimes
times.l | \ltimes
times.r | \rtimes
times.square | \boxtimes
times.triangle | \triangletimes
tiny | \tplus
togrog | -
top | \top
trademark | -
trademark.registered | -
trademark.service | -
triangle.stroked.t | \bigtriangleup
triangle.stroked.b | \bigtriangledown
triangle.stroked.r | \triangleright
triangle.stroked.l | \triangleleft
triangle.stroked.bl | \lltriangle
triangle.stroked.br | \lrtriangle
triangle.stroked.tl | \ultriangle
triangle.stroked.tr | \urtriangle
triangle.stroked.small.t | \vartriangle
triangle.stroked.small.b | \triangledown
triangle.stroked.small.r | \smalltriangleright
triangle.stroked.small.l | \smalltriangleleft
triangle.stroked.rounded | -
triangle.stroked.nested | \whiteinwhitetriangle
triangle.stroked.dot | \trianglecdot
triangle.filled.t | \bigblacktriangleup
triangle.filled.b | \bigblacktriangledown
triangle.filled.r | \blacktriangleright
triangle.filled.l | \blacktriangleleft
triangle.filled.bl | \llblacktriangle
triangle.filled.br | \lrblacktriangle
triangle.filled.tl | \ulblacktriangle
triangle.filled.tr | \urblacktriangle
triangle.filled.small.t | \blacktriangle
triangle.filled.small.b | \blacktriangledown
triangle.filled.small.r | \smallblacktriangleright
triangle.filled.small.l | \smallblacktriangleleft
```

## U

```text
UU | -
Upsilon | \mupUpsilon
union | \cup
union.arrow | \cupleftarrow
union.big | \bigcup
union.dot | \cupdot
union.dot.big | \bigcupdot
union.double | \Cup
union.minus | \uminus
union.or | \cupvee
union.plus | \uplus
union.plus.big | \biguplus
union.sq | \sqcup
union.sq.big | \bigsqcup
union.sq.double | \Sqcup
upsilon | \mupupsilon
uranus | -
uranus.alt | -
```

## V

```text
VV | -
venus | \female
```

## W

```text
WW | -
without | \setminus
wj | -
won | -
wreath | \wr
```

## X

```text
XX | -
Xi | \mupXi
xi | \mupxi
xor | \oplus
xor.big | \bigoplus
```

## Y

```text
YY | -
yen | \mathyen
yuan | \mathyen
```

## Z

```text
ZZ | \BbbZ
Zeta | \mupZeta
zeta | \mupzeta
zwj | -
zwnj | -
zws | -
```

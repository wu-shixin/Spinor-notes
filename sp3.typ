#import "@preview/clean-math-paper:0.1.0": *

#let date = datetime.today().display("[month repr:long] [day], [year]")
#show: template.with(
  title: "Spinors 3",
)
#set math.mat(delim: "[")
#set math.vec(delim: "[")

= Poincare sphere

We notice that $mat(1,0;0,i)$ rotates $D->L->A->R->D$, which is a quarterwave matrix.
The continious version of this is $mat(1,0;0,e^(i phi))$.

How to rotate $H->L->V->R->D$. Notice that $A$ and $H$ are 45 degrees apart. Hence, we rotate coordinates first, apply the quarterwave matrix, and rotate back, so we have:
$
  &frac(1,sqrt(2)) mat(1,1;-1,1) mat(1,0;0,i) mat(1,0;0,i)
  =& frac(1,sqrt(2)) mat(1,i;i,1) e^(i pi/4)
$
(rotate, quarterwave, rotate back). The last one is a phase, that can be ignored later.
The continious version is to change the rotation matrices to 
$
  mat(cos theta, sin theta; -sin theta, cos theta), mat(cos theta, -sin theta; sin theta, cos theta)
$
A local phase matters, eg.
$
  vec(1,1) -> vec(1,i)
$
with the second phase become $e^(i pi/2)$. But the overall phase just changes the wave back and forth. Hence, it can be ignored.

Now, with $D->L->A->R->D$ and $H->L->V->R->D$ defined, we have @sp31. Combine them, we have a Poincare sphere. 
#figure(image("images/sp31.png"))<sp31>

The third direction is $frac(1,sqrt(2))[1,1;-1,1]$. To summarize,
$
  mat(1,0;0,i): D -> L \
  frac(1,sqrt(2)) mat(1,i;i,1) e^(i pi/4): H -> L \
  frac(1,sqrt(2))[1,1;-1,1] : H -> A
$
They are all #(text(red)[2x2 Untary matrices (U(2))]).

Recall that det of unitary matrices has mag=1, but if det=-1, it becomes reflection, we need det=+1 for rotation. Hence, #(text(red)[special]) unitary group where det=+1, or SU(2).

= Why are Jones vecs spinors?

In physical space, $V -> H -> -V -> -H$. However, in polarization space/Poincare sphere, the overall phase does not matter. So we have $V -> H -> V -> H$

#(text(red)[1x rotation in physical space= 2x rotation in polarization space]).

= Quantum states
#figure(image("images/sp32.png"))<sp32>

Note that for light, polarization is 2x the physical, but quantum state is 1/2 of the physical.

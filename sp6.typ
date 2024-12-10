#import "@preview/clean-math-paper:0.1.0": *

#let date = datetime.today().display("[month repr:long] [day], [year]")
#show: template.with(
  title: "Spinors 6",
)
#set math.mat(delim: "[")
#set math.vec(delim: "[")

= Pauli vectors
The Pauli matrices are basis, and the most general form is
$
  mat(z, x-i y; x+i y,-z)
$
We can write a 3D vec $[x,y,z]^T$ into Pauli vecs. Then, we see reflection and rotation.

In a 3D vec, reflect against the $z$-axis is
$
  arrow(v)=x arrow(e_x) + y arrow(e_y) + z arrow(e_z) \
  -> arrow(v)=x arrow(e_x) + y arrow(e_y) - z arrow(e_z)
$
Recall the conjugation of Pauli matrices give negative signs when conjugating the other matrices. Eg. 
$
  -sigma_z sigma_x sigma_z=sigma_x
$
Hence, let $V$ be the Pauli vector, then #(text(red)[negative]) conjugate with $-sigma_z$ gives us 
$
  sigma_x -> sigma_x, sigma_y -> sigma_y, sigma_z -> sigma_z
$
To generalize this, if we want to reflect along unit vector $U$, then 
$
  V -> -U V U
$
To verify, decompose $V$ into the perp and para portion with $U$
$
  V &-> -U V U\
  &= -U(V_1+V_2)U \
  &= -U k U U+U U V_2 #text()[(perp vecs anticommute)]
  &=-V_1 + V_2

$

= Rotation
Rotation is like twice reflection, with the mirror angled at $theta/2$ when the rotation angle is $theta$.
Consider reflect along x-axis, and then y-axis.
$
  V&=-sigma_y -sigma_x V sigma_x sigma_y \
  &=sigma_y sigma_x V sigma_x sigma_y \
  &=sigma_y sigma_x V (sigma_y sigma_x)^dagger
$
The general reflection of $theta/2$ is 
$
  tau=cos theta/2 sigma_x+ sin theta/2 sigma_y
$
To rotate in general, we can first reflect against $x$-axis, and reflect against some mirror at $theta/2$ with $x$-axis.
Then, we have
$
  V&-> tau sigma_x V sigma tau \
  &=(cos theta/2 I+ sin theta/2 sigma_y sigma_x) V (cos theta/2 I+ sin theta/2 sigma_y sigma_x) \
  &=(cos theta/2 I- sin theta/2 sigma_y sigma_x) V (cos theta/2 I- sin theta/2 sigma_y sigma_x)^dagger
$
For the left side term, we exchange $sigma_x sigma_y$, for the right side term, we put a dagger, which is equivalent to changing order in this case. 
In matrix form,
$
  mat(z, e^(-i theta) (x-i y); e^(-i theta) (x+i y),-z)
$
To see the changes of $x$ and $y$ coords,
$(cos theta + i sin theta) (x+i y)$ gives us
$
  x -> x cos theta -y sin theta \
  y -> x sin theta + y sin theta + y cos theta
$
This checks out with the rotation matrix of the $x y$-plane.
$
  mat(cos theta, -sin theta, 0;
    sin theta, cos theta, 0;
    0, 0, 1
  )
$
The rotation matrices of the $y z$ and $x z$ planes can be similarly obtained. 
These matrices are SU(2) matrices.

To summarize, we have:
$
  #text()[SU(2)] dot #text()[Pauli vector] dot #text()[SU(2)]^dagger
$
gives us a rotation. 

Now, we can take the "square-root" of Pauli vectors and get Pauli spinors, so each of the SU(2) matrix only completes half of the rotation in the spinors. Recall that 2x spinor rotation is 1x physical rotation. 

= SU(2) matrices
A SU(2) matrix has the following form:
$
  mat(alpha, -beta^*; beta, alpha)
$
so 2 complex numbers, 4 real degrees of freedom. One of the degree freedom ensures that the det is 1. 
Hence, 3 degrees of freedom for 3 rotation angles. 

Also notice that 
$
  A V A^dagger=(-A) V (-A)^dagger
$
This means a pair of SU(2) matrices do the same rotation. This means SU(2) us the #text(red)[double-cover] of SO(3), the special rotation group in 3d. 

= Factoring matrix
Example:
$
  mat(1, 100;4, 400)=mat(a; b)mat(c,d)
$
It is is equivalent to solving
$
  a c =1\
  b c=4 \
  a d=100 \
  b d=400
$
Note that there are inifinitely many solutions because we can easily scale by a factor. The invariant is $b/a$.
This is similar to the ignored overall phase factors in quantum states, where only the ratio matters. 

Also not that if det $eq.not 0$, then there is no solution. Eg. 400 becomes 500.

Then, we can solve this for a general Pauli vector. Note that det $V=0$, so $x^2+y^2+z^2=0$. The solution is
$
  mat(z, x-i y; x+i y,-z)=mat(a;b)mat(-b,a)
$
where $a=sqrt(x-i y)$ and $b=-i sqrt(x+i y)$.

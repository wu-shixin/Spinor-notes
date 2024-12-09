#import "@preview/clean-math-paper:0.1.0": *

#let date = datetime.today().display("[month repr:long] [day], [year]")
#show: template.with(
  title: "Spinors 2",
//   authors: (
//     (name: "Author 1", affiliation-id: 1, orcid: "0000-0000-0000-0000"),
//     (name: "Author 2",  affiliation-id: "2,*"),
//   ),
//   affiliations: (
//     (id: 1, name: "Affiliation 1, Address 1"),
//     (id: 2, name: "Affiliation 2, Address 2"),
//     (id: "*", name: "Corresponding author")
//   ),
//   date: date,
//   heading-color: rgb("#2e44a6"),
//   link-color: rgb("#12472b"),
//   // Insert your abstract after the colon, wrapped in brackets.
//   // Example: `abstract: [This is my abstract...]`
//   abstract: lorem(30),
//   keywords: ("First keyword", "Second keyword", "etc."),
//   AMS: ("65M70", "65M12", )
)

= Emag wave
An emag wave has three directions, and we look at the $y$ direction, which is the vertical polarization
$
  E=E^y arrow(e_y),
$
where $E^y(t,z)=A cos(omega t-k z)$. $omega$ is the angular frequency, $t$ is time, $k$ is angular wave number, $z$ is location.

Give the wave a phase $phi$, then we have
$
E^y(t,z)=A cos(omega t-k z + phi)
$
Write in Euler's formula, and we want to pretend $E^y$ is complex, where we just ignore the complex part. Then,
$
  E^y&=A cos(omega t-k z + phi)+i A sin(omega t-k z + phi) \
  &= A e^i(omega t - k z)e^(i phi)
$
Similarly, if we consider the horizontal polarization. 
$
  E^x=A^x e^i(omega t - k z)e^(i phi)
$
The emag wave that has only the horizontal and vertical direction can be written in the vector.
$
  vec(delim: "[", A^x e^i(omega t - k z)e^(i phi_x), A^y e^i(omega t - k z)e^(i phi_y), )
$
We get #emph(text(red)[Jones Vector]) if we ignore the common phase $e^i(omega t - k z)$ and get
$
  J=vec(delim: "[", A^x e^(i phi_x), A^y e^(i phi_y), )
$
Furthermore, let $J=A^x e^(i phi_x) arrow(H)+A^y e^(i phi_y)arrow(V)$.
Let the diagonal $arrow(D)=frac(1, sqrt(2)) arrow(H)+frac(1, sqrt(2)) arrow(V)$, and anti-diagonal $arrow(A)=frac(1, sqrt(2)) arrow(H)-frac(1, sqrt(2)) arrow(V)$.

// Furthermore, let $A^x=A^y=1$, and $phi_x=0$ and $phi_y=pi/2$

Furthermore, let
Let left circular polarization $arrow(L)=frac(1, sqrt(2)) arrow(H)+frac(i, sqrt(2)) arrow(V)$, and right circular polarization $arrow(R)=frac(1, sqrt(2)) arrow(H)-frac(i, sqrt(2)) arrow(V)$.


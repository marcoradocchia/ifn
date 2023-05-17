#import "template.typ": *
#import "physics.typ": *
#import "typst-boxes.typ": *
#import "notes.typ": note

#show: project.with(
  title: "Fisica Nucelare - Prof. Capozzi",
  authors: (
    (
      name: "Marco Radocchia",
      email: "marco.radocchia@outlook.com",
      affiliation: "Università degli Studi dell'Aqauila",
    ),
  ),
  date: "28 Marzo 2023",
)

= Scattering Rutherford

== Esperimento di Geiger-Masdner

La densità di nuclei va come 

Indicando con $theta$ l'angolo di scattering, per singolo scattering abbiamo
una varianza:
$
  sigma_1 = sigma^2 = expval(theta^2) - expval(theta)^2
$
Per duplice scattering:
$
  sigma_2^2
  = expval(theta_1 + theta_2)^2 - expval(theta_1 + theta_2)^2
  = expval(theta_1^2) + expval(theta_1^2) + 2 expval(theta_1 theta_2)
  = 2 sigma_1^2
  = 2 sigma_2^2
$
dato che $expval(theta_1 + theta_2) = expval(theta_1) + expval(theta_2)$.

== Regola d'oro di Fermi

Dalla _regola d'oro di Fermi_, il rate di transizione:
$
  W = (2 pi) / hbar |mel(psi_f, upright(H)_"int", psi_i)|^2 dv(n_f, E_f)
$
dove le funzioni d'onda iniziale e finale:
$
  psi_i = 1 / sqrt(V) e^(i dprod va(p)_i va(x) / hbar)
$

$
  psi_f = 1 / sqrt(V) e^(i dprod va(p)_f va(x) / hbar)
$
e l'hamiltoniana di interazione:
$
  upright(H)_"int" = z e Phi(va(x))
$
allora:
$
  mel(psi_f, upright(H)_"int", psi_i)
  = integral dd(va(x), 3) psi_i (va(x)) Phi (va(x)) psi_f^ast (va(x))
  = (z e) / V integral dd(va(x), 3) e^(i (va(q) dot.c va(x)) / hbar ) Phi (va(x))
$

#colorbox(title: "Teorema")[
  Siano $u, v$ due campi scalari tali che $u,v -> 0$ come $|va(x)| -> oo$:
  $
    integral_V dd(va(x), 3) (u nabla^2 v - v nabla^2 u)
    = integral_V dd(va(x), 3) nabla dot.c (u nabla v - v nabla u)
    = integral_(diff V) dd(va(S)) dot.c (u nabla v - v nabla u)
    = 0
  $
]

Ponendo:
$
  u = Phi(va(x))
$
$
  v = - (hbar^2) / q^2 e^(i (va(q) dot.c  va(x)) / hbar)
$
allora, considerando l'equazione per la densità di carica nucleare:
$
  nabla^2 Phi(va(x)) = - (rho(va(x))) / epsilon_0
$
e sostituendo:
$
  mel(psi_f, upright(H)_"int", psi_i)
  &= (z e) / V integral_V dd(va(x), 3) (-hbar^2 / q^2) e^(i (va(q) dot.c va(x)) / hbar)
    nabla^2 Phi (va(x)) \
  &= (z e hbar^2) / (V q^2) integral dd(va(x), 3) rho(va(x)) e^(i (va(q) dot.c va(x)) / hbar) \
  &= (z Z e^2 hbar^2) / (V q^2) integral_V dd(va(x), 3) f(va(x)) e^(i (va(q) dot.c va(x)) / hbar) \
  &= (z Z e^2 hbar^2) / (V q^2 epsilon_0) F (va(q))
$
dove abbiamo introdotto il *fattore di forma*:
$
  F (va(q)) = integral dd(va(x), 3) f(va(x)) e^(i (va(q) dot.c va(x)) / hbar)
$

Quindi la _densità di stati_:
$
  dv(n_f, E_f) = (p_f^2 dd(p_f) dd(Omega) V) / ((2 pi hbar)^3 dd(E_f))
$
e introducendo conservazione di impulso ed energia $p_f = p_i = m v$,
$E_f = E_i = 1 / 2 m v^2$, abbiamo $dd(p_f) = m dd(v)$, $dd(E_f) = m v dd(v)$.
Ricordiamo che $V$ è il _volume occupato nello spazio delle fasi_.

Quindi sostituendo:
$
  dv(n_f, E_f)
  = (m^2 v^2 m dd(v) dd(Omega) V) / ((2 pi hbar)^3 m v dd(v))
  = (m^2 v dd(Omega) V) / (2 pi hbar)^3
$
Possiamo esprimere questo rapporto anche come:
$
  dv(n_f, E_f)
  = N_"int" / (N_"inc" N_"bers") = (Phi_"inc" N_"bers" sigma) / (N_"inc" N_"bers")
  = (N_"inc" sigma) / (s t N_"inc") difference(x) / difference(x)
  = (sigma v) / V
$
// "st" cos'è??
La sezione d'urto:
$
  sigma = V / v (2 pi) / hbar |mel(psi_f, upright(H)_"int", psi_i)| dv(n_f, E_f)
$

#colorbox(title: "Potenziale a corto raggio")[
  Consideriamo un hamiltoniana di interazione che descriva un potenziale a
  _corto raggio_ (interazioni fra particelle elementari):
  $
    upright(H)_"int"
    = V_0 (e^(- mu r) / r)
  $
  dove il termine:
  $
    V_0 = (z Z e^2) / (4 pi epsilon_0), mu = 0
  $
  Utilizzando una tale hamiltoniana, l'elemento di matrice fra gli stati
  iniziale e finale:
  $
    |mel(psi_f, upright(H)_"int", psi_i)| = ???
  $
]

ed esplicitando la _densità di stati_ e l'_elemento di matrice
dell'hamiltoniana_:
$
  sigma
  = V / v (2 pi) / hbar (z^2 Z^2 e^4 hbar^4) / (V^2 q^4 epsilon_0^2)
    |F (va(q))|^2 (m^2 v dd(Omega) V) / (8 pi^3 hbar^3)
$
Esplicitando il modulo dell'_impulso trasferito_
$|va(q)| = 2 |va(p)_i| sin theta / 2$:
$
  dv(sigma, Omega)
  = (z^2 Z^2 e^4 |F (va(q))|^2)
    / (4 pi^2 epsilon_0^2 16 m^2 v^4 sin^4 theta / 2)
  = ((z Z e) / (16 pi epsilon_0 T))^2 |F (va(q))|^2 / (sin^4 theta / 2)
$

L'_approssimazione classica_ si ottiene considerando una distribuzione
puntiforme di carica, il che equivale a inserire $f (va(x)) = delta^3 (va(x))$
nel calcolo del fattore di forma.
Facendo questo si riottiene la sezione d'urto differenziale ottenuta con il
calcolo puramente classico.

Se $b$ è la _sezione d'urto_ e $p_T$
$
  b p
$

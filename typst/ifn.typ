#import "template.typ": *
#import "physics.typ": *
#import "typst-boxes.typ": *
#import "notes.typ": note

#show: project.with(
  title: "Istituzioni di Fisica Nucleare",
  authors: (
    (
      name: "Marco Radocchia",
      email: "marco.radocchia@outlook.com",
      affiliation: "Università degli Studi dell'Aqauila",
    ),
  ),
  date: "28 Marzo 2023",
)

= Interazione radiazione materia
Trattiamo ora l'_interazione elettromagnetica di particelle con la materia_.
Esistono diversi tipi di trattazione:
- *classica*: utilizza la forza di volume e le equazioni di Maxwell;
- *quantomeccanica*: basata sull'interazione onda-corpuscolo con il campo
  elettromagnetica;
- *QED*: attraveso l'emissione/assorbimento di fotoni.
Quella che affronteremo in questo corso è la cosiddetta trattazione classica.

Indicheremo con *parametro d'impatto* ($b$) la _distanza fra la traiettoria
della particella incidente ed il "target"_.
Distinguiamo i seguenti casi:
- $b > "raggio atomico"$: l'interazione avviene fra la particella e l'atomo nel
  suo complesso; in questo caso avvengono:
  - perdita di energia per ionizzazione;
  - eccitazione dell'atomo;
- $b tilde.op "raggio atomico"$: interazione fra particella ed elettroni
  dell'atomo:
  - produzione di _raggi delta_ (_elettroni di knock-on_);
- $b < "raggio atomico"$: scattering coulombiano fra la particella incidente ed
  il potenziale del nucleo atomico:
- $b tilde.op "raggio nucleare"$: fenomeno del _Bremsstrahlung_.

Per quanto riguarda i *fotoni*, tratteremo:
- _effetto fotoelettrico_ (elettroni legati all'atomo);
- _effetto compton_ (elettroni considerati liberi);
- _produzione di coppie_;
- _effetto Čerenkov_.

Alcune grandezze caratteristiche:
- *raggio atomico* $tilde.op angstrom = 10^(-8) "cm"$
- *raggio nucleare* $tilde.op 1 "fm" = 10^(-13) "cm"$

= Perdita di energia per ionizzazione <perdita_energia_ionizzazione>
Vediamo il fenomeno della _perdita di energia per ionizzazione_ secondo la
trattazione di Bohr.

Consideriamo un nucleo di carica $Z e$ e $Z$ elettroni.
Consideriamo una particella di carica $Z e$ e di massa $M >> m_e$ e velocità
$va(v)$. Consideriamo tale velocità sufficientemente grande, al fine di poter
assumere gli elettroni atomici fermi durante l'urto.
Facciamo l'ulteriore ipotesi che l'impulso trasferito durante la collisione si
piccolo, ovvero che la particella non venga deflessa.

// TODO: figure

La forza che sente la particella incidente è la forza di Coulomb:
$ va(F) = e va(E) $
dove $va(E)$ è il campo elettrico generato degli elettroni. Quindi
l'_impulso trasferito_, che è per simmetria lungo la direzione del moto, è dato
dalla componente trasversa del campo elettrico:
$
  difference(va(p))
  = integral va(F) dd(t)
  = integral (-e) va(E) dd(t)
  = e integral E_perp underbrace(dv(t,z), v^(-1)) dd(z)
  = e/v integral E_perp dd(z)
$
Il _flusso del campo elettrico_ $Phi(E)$ attraveso il cilindo:
$ Phi(E)
  = integral va(E) dprod underbrace(dd(va(S)), 2 pi b dd(z))
  = 2 pi b integral E_perp dd(z)
$
Quindi:
$
  Phi(E)
  = 2 pi b integral_(-oo)^oo E_perp dd(z)
  = (Z e) / epsilon_0
$
Quindi il _modulo dell'impulso trasferito_:
$
  Delta p
  = (Z e^2) / (2 pi epsilon_0) 1 / (v b)
  = underbrace(((Z e^2)/(4 pi epsilon_0 b^2)), "Forza\ncoulombiana") 
    overbrace(((2 b) / v), "Tempo\ndell'urto") 
$
Introducendo ora la _costante di struttura fine_:
$
  alpha
  = (e^2) / (4 pi epsilon_0 hbar c)
  tilde.eq 1 / 137
$
allora il modulo dell'impulso trasferito:
$
  Delta p
  = 2 alpha Z (hbar c) / (v b)
  = 2 alpha Z (hbar) / (beta b)
$
dove con $beta$ abbiamo indicato il _beta di Lorentz della particella_.

Conoscendo l'impulso trasferito, vogliamo ora vedere cosa accade all'*energia*
della particella. L'energia cinetica (classica) trasferita della particella:
$
  difference(E)
  = (Delta p^2) / (2 m_e)
  = (2 Z^2 alpha^2 hbar^2) / (m_e beta^2 b^2)
$

== Deflessione della particella

L'angolo di deflessione della particella, che supponiamo di massa $M$:
$
  difference(theta)
  = difference(p) / p
  = difference(p) / (M beta c) 
$
dove:
$
  difference(p) / p
  = (Z e^2) / (2 pi epsilon_0) 1 / (M v^2 b)
  = (Z e^2) / (4 pi epsilon_0 b) 1 / (0.5 M v^2)
  << 1 
$
Quindi per masse molto grandi della particella o per grandi energie la
deflessione è trascurabile.

== Urti multipli

Considerando che la particella subisce _più urti_, cioé attraversa un materiale
di spessore $dd(x)$. Considerando di avere un numero di elettroni per
unità di volume
$
  n_e = Z N_A / N rho 
$
e considerando uno spazio nel materiale paria $dd(l)$ e possibili
parametri di impatto compresi fra $b$ e $b + dd(b)$, allora la perdita di
energia per unità di lunghezza percorsa dalla particella all'interno del
materiale:
$
  dv(E,l) 
  &= integral_(b_min)^(b_max) 2 pi b dd(b) n_e 2 Z^2 alpha^2
    hbar^2 / (m_e beta^2 b^2) \
  &= (4 pi Z^2 alpha^2 hbar^2 n_e) / (m_e beta^2)
    integral_(b_min)^(b_max) (dif b) / b \
  &= (4 pi Z^2 alpha^2 hbar^2) / (m_e beta^2) (Z N_a rho) / A ln (b_max / b_min) 
$ <perdita_energia_nucleo>
dove con $A$ abbiamo indicato il _numero atomico_ dell'atomo scatterante.

Al crescere di $b$ il tempo di interazione $Delta t tilde.op b / (gamma v)$
cresce. Se questo tempo diventa maggiore dell'inverso del _tempo di rivoluzione
dell'elettrone_ $1 / omega_e$:
$ Delta t < 1 / omega_e => b_max / (gamma v) = 1 / omega_e $
quindi abbiamo un'espressione che descrive il _parametro d'impatto massimo_:
$ b_max = (gamma v) / omega_e = (gamma beta c) / omega_e $

Per quanto riguarda il _parametro d'impatta massimo_, considerando la
_lunghezza d'onda di De Broglie della particella_ $lambda = hbar / p$
e l'espressione per l'impulso $p = n_e c beta gamma$:
$ b_min = hbar / (m_E beta gamma c) $

// TODO
Quindi sostituendo $b_max$ e $b_min$ in @perdita_energia_nucleo:
$ - eval((dif E) / (dif l))_"ion"
= (4 pi Z^2 alpha^2 hbar^2) / (m_e beta^2) (Z N_a rho) / (A) ln ((m_e c^2 beta^2 gamma^2) / (hbar angle.l omega_e angle.r)) $
con $angle.l omega_e angle.r$ il tempo di rivoluzione medio dell'elettrone.

== Perdita di energia dovuta al campo del nucleo
La perdita di energia dovuta al campo del nucleo, considerando il nucleo come
target, ovvero considerando $m e -> A m_n$, $n_e -> n_e / Z$, $e^2 -> Z^2
e^2$:
$ (- (dif E) / (dif l)) / (- (dif E) / (dif l))
  = n_e / Z^2 e^2 1 / (A m_n) 1 / (n_e e^2) m_e
  = Z / A ??? $

Tipicamente si utilizza il _grammage_ del materiale:
$ Delta x = rho Delta l = []$

=== Bethe-Block
// TODO: aggiungi cose

$ (dif E) / (dif x)
  = 4 pi tau_e^2 m_e c^2 (z^2 Z N_A rho) / A 1 / beta^2 [1 / 2 ln ((2 gamma^2 beta^2 m_e c^2 T_max) / expval(I)^2) - beta^2 (delta (gamma beta)) / 2] $
Dove:
$ T_max = (2 gamma^2 beta^2 m_e c^2) / (1 + 2 gamma m_e / M + (m_e / M)^2) $
è la _massima energia trasferita in un singolo urto all'elettrone_.
Con $expval(I)$ abbiamo indicato il _potenziale ???_.
Il parametro $delta$ si chiama *fattore di densità*:
$ delta / 2 = ln (hbar omega_p) / I + ln beta gamma - 1 / 2 $
dove abbiamo $hbar omega_p$ l'*energia di plasma*:
$ hbar omega_p = sqrt(4 pi n_e Z_e^3) (m_e c^2) / alpha  $
Vedi sito web di _Particle Data Group_ per formule tabulate.
Da notare che tipicamente, per i casi più comuni, $Z / A = 1 / 2$, ad
eccezzione ad esempio dell'_idrogeno liquido_.

== Percorso residuo o range di una particella
Il *range* della particella $R$ è definito come segue:
$ R = integral_0^E (dif E) / (- eval((dif E) / (dif x))_"ion") $

Ad esempio per $beta tilde.op 1$, con $E$ l'_energia iniziale_ della
particella, $rho$ la _densità_ del materiale:
$ R = E / (rho (- (dif E) / (dif x))) $
Se ad esempio avessimo $E = 1 "TeV"$, $rho = 3 "g/cm"^3$ e $- (dif E) / (dif x)
= 1.5 "Mev" / ("g/cm"^2)$, allora:
$ R
  = (10^6 "MeV") / (3 "g/cm"^3 dot.op 1.5 "Mev" / ("g/cm"^2)) 
  = 2 dot.op 10^5 "cm" tilde.eq 2 "km" $

= Diffusione coulombiana multipla

Nelle collisioni elastiche con i nuclei, la particella incidente viene deflessa
senza perdere energia in maniera apprezzabile. Il materiale deve essere
sufficientemente sottile affinché la particella non perda molta energia per
ionizzazione.

Introduciamo la *sezione d'urto di Rutherford*, indicando con $z$ il valore
della particella incidente e con $Z$ il valore del nucleo:
$ (dif sigma) / (dif Omega)
  &= r_e^2 (z Z)^2 ((m_e c^2)^2 / (4 p^2 v^2 sin^4 theta / 2)) \
  &= (e^2 / (4 pi epsilon_0 m_e c^2))^2 (z Z)^2 ((m_e c^2) / (4 p^2 v^2 sin^4 theta / 2)) \
  &= ((z Z e^2 M) / (4 pi epsilon_0))^2 1 / (4 p^4 sin^4 theta / 2) $
Questa formula è valida in limite _non-relativistico_, ovvero per $M >> m_e$
e/o $v << c$.

È molto piccola la probabilità di avere _back-scattering_.
Per piccoli angoli $sin theta tilde.op theta$.

$ n_N = N_A rho / A $
dove $A$ è la massa (_nucleo atomico_) dei nuclei scatteratori e $rho$ la
_densità del materiale_.
$ dif^2 n
  &= n_N dif sigma dif l \
  &= (N_A rho) / A r_e (z Z)^2 (m_e c^2)^2 / (4 p^2 v^2 sin^4 theta / 2) dif theta dif l \
  &= N_A / A r_e^2 (z Z)^2 (m_e c^2)^2 / (4 p^2 v^2 sin^4 theta / 2) 2 pi theta dif theta dif x $
Ora, per piccoli angoli $theta$, possiamo condondere $sin^4 theta / 2 tilde.eq
theta^4 / 16$, quindi:
$ dif^2 n
  = 8 pi r_e^2 N_A / A (z Z)^2 (m_e c^2)^2 / (p^2 v^2) (dif theta dif x) / theta^3 $

Inoltre, nell'ipotesi che gli urti possano essere considerati tutti
indipendenti, allora gli angli di diffusione seguiranno una _distribuzione
gaussiana_. Possiamo così calcolare l'angolo di diffusione quadratico medio:
$ theta_s^2
  &= integral theta^2 (dif^2 n) / (dif theta dif x) dif theta \
  &= 8 pi r_e^2 N_A / N (z Z)^2 (m_e c^2)^2 / (p^2 v^2) integral (theta^2 dif theta) / theta^3 \
  &= 8 pi r_e^2 N_A / N (z Z)^2 (m_e c^2)^2 / (p^2 v^2) ln theta_max / theta_min $
Nello scattering Rutherford vale l'approssimazione $tan theta / 2 tilde.op
theta / 2 tilde.op 1 / b$, dove $b$ è il _parametro d'impatto_. Quindi abbiamo
che ad angolo di scattering minimo $theta_min => b_max$ abbiamo parametro
d'impatto massimo.
Quindi:
- $b_max$:
$ b_max tilde.eq expval(r_"atomo") = (r_e / alpha^2) Z^(-1 / 3) $
seoncdo il _modello atomico di Thomas-Fermi_;
- $b_min$
$ b_min tilde.eq expval(r_"nucleo") = ??? $

Il rapporto $theta_max / theta_min$:
$ theta_max / theta_min
  = r_e / alpha^2 Z^(-1 / 3) A^(-1 / 3) 2 / r_e
  = ...
  = (183 Z^(-1 / 3))^2 $
Quindi:
$ theta_s^2 = 16 pi r_e^2 N_A / A (z Z)^2 (m_e c^2)^2 / (p^2 v^2) ln (183 Z^(-1 / 3)) $
Raggruppiamo i termini:
$ theta_s^2 = [(4 pi (m_e c^2))^2 / alpha] (z / (p v))^2 [4 r_e^2 alpha (N_a Z^2) / A ln (183 Z^(-1 / 3))] $
dove $E_s = sqrt((4 pi) / alpha) m_e c^2 tilde.eq 21 "MeV"$.
Così abbiamo l'inverso della *lunghezza di radiazione* $x_0$:
$
  1 / x_0 = 4 r_e^2 alpha (N_a Z^2) / A ln (183 Z^(-1 / 3)) 
  
$ <lunghezza_radiazione>
Così possiamo calcolare:
$ expval(theta_s^2) 
  = integral theta_s^2 dif x
  = integral E_s^2 (z / (p v))^2 1 / x_0 dif x
  = E_s^2 (z / (p v))^2 x / x_0 $
Quindi l'*angolo medio di diffusione coulombiana multipla*:
$ sqrt(expval(theta_s^2))
  =  E_s z / (p v) sqrt(x / x_0) $

Per angoli piccoli si può scomporre l'angolo in:
$ expval(theta^2) 
  = expval(theta_x^2) + expval(theta_y^2) $ 
Infatti $sin theta = sin theta sqrt(sin^2 theta + cos^2 theta)$, quindi per
angoli piccoli $theta tilde.eq sin theta$:
$ theta
  tilde.eq theta sqrt(sin^2 theta + cos^2 theta)
  = sqrt(theta^2 sin^2 theta + theta^2 cos^2 theta)
  = sqrt(theta_x^2 + theta_y^2) $
Gli angoli _proiettati_ (????):
$ expval(theta_"proiettati"^2)
  = sqrt(expval(theta_s^2) / 2) = z ??? $

= Bremsstrahlung (irraggiamento) // 2023-04-04

Particelle cariche interagiscono con i nuclei atomici secondo collisioni
elastiche, venendo accelerate ed emettendo quindi radiazione.
La _potenza emessa è proporzionale al quadrato dell'accelerazione della
particella_. Inoltre, poiché la forza coulombiana non dipende dalla massa,
l'accelerazione in questo tipo di fenomeno è sempre proporzionale all'inverso
della massa.
$ arrow(F) = m arrow(a) => |arrow(a)| prop 1 / m $
Quindi la potenza emessa è inversamente proporzionale al quadrato della massa:
$ P prop |arrow(a)|^2 => P prop 1 / m^2 $

Ad esempio, per la massa dei muoni la potenza di Bremsstrahlung è $tilde.op
(200)^2$ volte più piccola rispetto a quella degli elettroni; per i protoni è
$tilde.op (2000)^2$ più piccola riespetto a quella degli elettroni.

Supponiamo per _ipotesi_ di avere $beta tilde.eq 1$ e che la velocità della
particella non cambi apprezzabilmente nel processo di collisione. Consideriamo
inoltre una particella di massa $M$ e carica $z e$, velocità $v$ e parametro
d'urto $b$ rispetto alla posizione del nucleo; quest'ultimo di carica $Z e$.
Considerato un tale sistema, proviamo a calcolare la _potenza emessa per
Bremsstrahlung_ nel sistema di riferimento solidale alla particella $O'$.
In tale sistema di riferimento la _componente trasversa del campo del nucelo
è espansa di un fattore $gamma$_.
$ a = gamma (z Z e^2) / (4 pi epsilon_0 b^2) 1 / M $
Sfruttando l'*equazione di Larmor* ($P = 2 / 3 (Z^2 e^2) / (4 pi epsilon_0) a^2
/ c^2$), calcoliamo la potenza emessa:
$ P = 2 / 3 (z^4 Z^2 e^6) / (4 pi epsilon_0)^3 1 / (b^4 M^2 c^3) $
Vogliamo calcolare ora l'energia emessa $Delta E$ durante il _tempo dell'urto_.
Per fare questo dobbiamo conoscere il tempo dell'urto, che risulta essere (vedi
_Perdita di Energia per Ionizzazione_, @perdita_energia_ionizzazione) $Delta t
= (2b) / (gamma v)$. Integrando la potenza nel tempo otteniamo la perdita di
energia:
$ Delta E
  = integral P dif t
  tilde.eq P Delta t
  = 4 / 3 gamma (z^4 Z^2 e^6) / (4 pi epsilon_0)^3 1 / (b^3 M^2 c^2 v) $

Lo *spettro di emissione* per Bremsstrahlung, che è un _fenomeno impulsivo_, è
circa costante fino ad una certa _frequenza di taglio_:
$ omega_c = (gamma v) / (2 b) $
Quindi lo *spettro di emissione*:
$ (dif E)/(dif omega)
  tilde.eq (Delta E) / omega_c
  = 8 / 3 (z^4 Z^2 e^6) / (4 pi epsilon_0)^3 1 / b^2 M^2 c^3 v^2 $
È da notare che $(dif E) / (dif omega)$ è un _invariante relativistico_, mentre
la frequenza _omega_ non è invariante:
$ omega_"Lab" = gamma omega' (1 - beta cos theta) $
dove $theta$ è l'_angolo di emissione_ e $omega_"Lab"$ è il risultato
dell'_effetto Doppler_.
$ tan theta
  = (sin theta) / (gamma (cos theta - beta)) => theta tilde.op 1 / gamma $
dove $theta$ è l'angolo che vediamo nel sistema del laboratorio.
Utilizzando il _raggio classico dell'elettrone_:
$ r_e = e^2 / (r pi epsilon_0 m_e c^2) $
all'interno della formula precendente:
$ (dif E) / (dif omega)
  &= 8 / 3 z^4 Z^2 e^2 / (4 pi epsilon_0)^2 e^2 / (4 pi epsilon_0)
    (m_e^2 c) / (m_e^2 c^4) 1 / (b^2 M^2 v^2) \
  &= 8 / 3 z^4 Z^2 r_e^2 e^2 / (4 pi epsilon_0) m_e^2 / M^2 1 / (beta^2 c) 1 / b^2 $

L'energia è irraggiata sotto forma di quanti di energia; in altri termini
l'energia è irraggiata sotto forma di fotoni. Considerato che l'energia di un
fotone vale $E_gamma = hbar omega$, il numero di fotoni emessi:
/* $ dif n = (dif E) / (hbar omega) $ */
/* Quindi il _numero di fotoni emessi per intervallo di energia: */
/* $ (dif n) / (dif E_gamma) */
/*   = 1 / (hbar omega) (dif E) / (dif E_gamma) => 1 / E_gamma (dif E) / (dif hbar omega) $ */

$ n_N = (N_A rho) / A $

Valutiamo la perdita di energia per Bremsstrahlung nell'attraversamento di un materiale
di spessore $dif x$.
Il _numero di fotoni _($n$) per _unità di energia_ ($dif E_gamma$) e per _unità
di spessore_ ($dif x$) del materiale:
$ (dif^2 n) / (dif E_gamma dif x)
  &= integral 1 / E_gamma (dif E) / (d hbar omega) 2 pi N_A / A b dif b \
  &= (2 pi N_A) / (? E_gamma A) integral_(b_min)^(b_max) (dif E) / (dif omega) b dif b \
  &= 8 / 3 z^4 Z^2 r_e^2 m_e^2 / M^2 underbrace(e^2 / (4 pi epsilon_0 hbar c), alpha) (2 pi N_A) / (beta^2 A) integral_(b_min)^(b_max) (dif b) / b \
  &= (16 pi) / (3 E_gamma) r_e^2 z^4 / beta^2 alpha m_e^2 / M^2 (N_A Z^2) / A ln b_max / b_min $
Quindi:
$ (dif^2 n) / (dif E_gamma dif x) = z^4 / beta^2 m_e^2 / M^2 4 r_e^2 alpha (N_A Z^2) / A (F (E, E_gamma)) / E_gamma $
Allora:
$ (dif E) / (dif x)
  = ??? $
Consideriamo due diversi casi, considerando il caso $M = m_e$, $z = 1$, $beta =
1$:
- _carica del nucleo non schermata_ (la particella vede tutta la carica del
  nucleo), ovvero range di energia $m_e c^2 << E << m_e c^2 Z^(-1 / 3) ???$:
  $ integral_0^E F (E, E_gamma) dif E_gamma = (ln (2 E) / (m_e c^2) - 1 / 3) E $
- _carica del nucelo parzialmente schermata_, ovvero $E >> (m_e c^2 Z^(-1 / 3))
  / alpha$:
  $ integral_0^E F (E, E_gamma) dif E_gamma = (ln ???) $

  $ eval((dif E) / (dif x))_"Brems" = 4 r_e^2 alpha (N_A Z^2) / A (ln (183 Z^(-1
  / 3)) + #strike[1 / 18]) E tilde.eq E / x_0 $

Quindi _per Bremsstrahlung abbiamo un andamento esponenziale dell'energia
dissipata_:
$ E = E_0 e^(- x / x_0) $
$x_0$ rappresenta lo spessore in g/cm^2 in cui l'energia dell'elettrone si
riduce di un fattore $1 / e$ per i soli effetti radiativi.

= Effetto Čerenkov

L'_effetto Čerenkov_ è un fenomeno che coinvolge particelle cariche (e
massive) ultrarelativistiche ed è legato alle proprietà dielettriche del mezzo
attraversato. Si presenta quando la velocità di una tale particella che
attraversa il mezzo è maggiore della velocità della luce nel mezzo stesso (può
essere visto come l'analogo del _bang sonico_).

Consideriamo un materiale con costante dielettrica relativa $epsilon$ e indice
di rifrazione $n$. La particella carica ultrarelativistica, che emette onde
elettromagnetiche, si muove nel mezzo più velocemente della velocità di
propagazione di tali onde nel mezzo, che è data da:
$ c / sqrt(epsilon(omega)) = c / (n (omega)) $

// TODO: inserire immagine

$ l_c = c / n t $
$ l_p = beta c t $
La relazione che lega $l_c$ ed $l_p$:
$ l_c = l_p cos theta_c $
quindi l'_angolo di emissione_:
$ c / n t = beta c t cos theta_c => cos theta_c = 1 / (beta n) $
Dalla dipendenza di $n = n(omega)$ dalla _frequenza_ $omega$ abbiamo che
l'angolo di emissione $theta_c$ dipende anch'esso dalla lungezza d'onda o
frequenza della luce emessa.

Una delle possibili applicazioni dell'effetto Čerenkov è quella di separare
particelle a seconda della velocità $beta$.

$ (dif^2 E) / (dif x dif omega)
  &= (Z^2 e^2) / (4 pi epsilon_0) omega / c^2 [1 - 1 / (beta^2 n^2(omega))] \
  &= Z^2 (alpha hbar omega) / c [1 - cos^2 theta_c] \
  &= Z^2 (alpha hbar omega) / c sin^2 theta_c $
dove $Z$ è la carica della particella e $alpha = e^2 / (4 pi epsilon_0
hbar c) tilde.eq 1 / 137$ è la costante di struttura fine.
Quindi il numero di fotoni per radiazione Čerenkov per unità di percorso e
unità di frequenza:
$ (dif^2 N) / (dif x dif omega) = (Z^2 alpha) / c sin^2 theta_c $ 
Integrando in frequenza otteniamo:
$ I 
  = (dif N) / (dif x)
  = integral (dif^2 N) / (dif x dif omega) dif omega
  = (Z^2 alpha) / c integral_(Delta omega) sin^2 theta_c dif omega $
Considerando $sin^2 theta_c$ circa costante e uguale al suo valor medio nel
range di frequenza pssiamo approssimare $I$ con:
$ I
  tilde.eq (dif N) / (dif x)
  = (Z^2 alpha) / c expval(sin^2 theta_c) Delta omega $

#colorbox(title: "Esempio")[
  Consideriamo un $Delta omega$ nel range del visibile:
  $ Delta omega = 2 pi (c / lambda_1 - c / lambda_2) $
  dove $lambda_1 = 3000 angstrom = 3 dot.c 10^3 dot.c 10^(-8) "cm"$ e
  $lambda_2 = 6000 angstrom = 6 dot.c 10^3 dot.c 10^(-8) "cm"$.
  Quindi:
  $ Delta omega
    = 2 pi 3 dot.c 10^10 (1 / 3 - 1 / 6)
    = 2 pi dot.c 5 dot.c 10^14 "Hz" $
  Considerando la costante $hbar c = 200 "MeV" dot.c "fm"$ (di cui è
  utile ricordare il valore):
  $ (alpha Delta omega) / c = (alpha hbar Delta omega) / (hbar c) $
  $ hbar Delta omega 
    = 6.6 dot.c 10^(-18) "eV" dot.c "s" 2 pi dot.c 5 dot.c 10^14 1 / "s" tilde.eq 2 "eV" $
  Quindi sostituendo nell'espressione di $I$:
  $ I = Z^2 expval(sin^2 theta_c) dot.c 730 "fotoni" / "cm" $
]

#colorbox(title: "Esempio")[
  Consideriamo un fascio di pioni $pi^+$ che contiene una frazione di protoni.
  Sia l'impulso del fascio (misto):
  $ p_(pi, p) = 5 "GeV" / c $
  Siano le masse delle due particelle $m_pi = 0.130 "GeV"/c^2$ e $m_p = 0.938
  "GeV"/c^2$.
  Il fascio attraversa due materiali di indici di rifrazione rispettivamente
  $n_1 = 1.05$ e $n_2$.

  Il $beta$ delle due particelle: $beta_p = 0.982$ e $beta_pi = 0.9996$.
  Quindi nel mezzo $n_1$ entrambe le particelle producono luce Čerenkov,
  infatti:
  $ beta_pi > beta_p > 1 / n_1 = 0.952 $
  È da notare che sebbene entrambe le particelle producano luce Čerenkov,
  l'emissione dei _"ring Čerenkov"_ avviene ad angoli diversi.

  Vogliamo scegliere il secondo materiale in maniera tale da separare i protoni
  dai pioni, quindi con indice di rifrazione $n_2$ tale che solo una delle due
  particelle produce luce Čerenkov:
  $ beta_pi > 1 / n_2 > beta_p $
]

#colorbox(title: "Esercizio")[
  Consideriamo dei muoni di alta energia prodotti da raggi cosmici in alta
  atmosfera. Per semplicità assumiamo che tutti i muoni prodotti abbiano
  un'energia di $10 "GeV"$ e assumiamo inoltre che vengano prodotti a circa $10
  "km"$ sul livello del mare (_a.s.l._).
  Sapendo che l'indice di rifrazione dell'aria è $n = 1.00029$, dire se i $mu$
  producono _luce Čerenkov_. Nel caso di risposta affermativa, determinare
  l'angolo di apertura dei fotoni prodotti $theta_c$.
  Quanti fotoni raggiungono il livello del mare?

  La massa del muone è $m_mu = 106 "MeV"/c^2$ ed il tempo di decadimento è
  $tau_mu = 2.2 mu"s"$.

  $ beta_mu
    = p / E
    = p / sqrt(p^2 + m^2)
    = 10 / sqrt(10^2 + 0.106^2) = 0.999944 $
  Ora, dato che:
  $ 1 / n = 1 / 1.00029 = 0.99971 $
  allora possiamo dire che il muone produce luce Čerenkov, infatti
  $beta_mu > 1 / n$.

  L'angolo $theta_c$:
  $ theta_c
    = 1 / (n beta_mu)
    = 1 / (1.00029 dot.c 0.999944)
    = 0.99977
    tilde.eq 1.2 degree $

  Abbiamo che il numero di fotoni Čerenkov prodotti per unità di lunghezza vale:
  $ N_"fot" / L
    = (Z^2 alpha) / c Delta omega sin^2 theta_c
    tilde.eq Z^2 sin^2 theta_c dot.c 730 "cm"^(-1) $
  La distanza percorsa da un muone di energia $E_mu = 10 "GeV"$ nel suo
  tempo di vita:
  $ l_mu
    = beta_mu gamma c tau_mu
    = p_mu / m_mu c tau_mu
    tilde.eq 62 "km" $
  quindi l'energia dei muoni è sufficiente a permettere ai muoni di arrivare al
  livello del mare.
  Nel percorso fino al livello del mare, dunque, un muone produce un numero di
  fotoni Čerenkov (facendo una serie di assunzioni, quali che il muone non perda
  energia per ionizzazione, etc.) pari a:
  $ N_"fot"
    = 730 dot.c (1 - cos^2 theta_c) dot.c L
    = 730 dot.c (1 - 0.99977^2) dot.c 10^4
    tilde.eq ?? $
]

= Interazione di fotoni con la materia
Vediamo ora una serie di processi nei quali vediamo l'interazione di fotoni con
la materia, quali:
- *effetto fotoelettrico* (_assorbimento_);
- *effetto Compton* (_diffusione_);
- *produzione di coppie* $e^+ e^-$ (_assorbito?_)

== Effetto Fotoelettrico
L'effetto fotoelettrico è un processo del tipo:
$ gamma + "atomo" -> "atomo"^+ + e^- $
L'energia estratta per effetto fotoelettrico:
$ E = E_gamma - W = planck nu - W $
dove $W$ è il _potenziale di estrazione_ (energia di legame).
Il processo è un _processo a soglia_, quindi esiste una lunghezza d'onda minima
per effetto fotoelettrico:
$ nu_min = W / planck $
Abbiamo diverse soglie a seconda delle diverse _shell_ elettroniche
considerate: $nu_K, nu_L, nu_M, ...$

=== Sezione d'urto

La sezione d'urto per effetto fotoelettrico è data da:
$ sigma_"p.e." = sigma_T 4 alpha^4 Z^5 ((m_e c^2) / E_gamma)^3 $
dove $sigma_T$ è la _sezione d'urto di Thomson_:
$ sigma_T = (8 pi) / 3 r_e^2 $
con $r_e$ il raggio di Thomson per l'elettrone.

=== Coefficiente di assorbimento

L'intensità di un fascio di fotoni ad una certa profondità $x$ all'interno di
un materiale può essere espressa come (_legge di Lambert-Beer_):
$ I (x) = I_0 e^(- mu x) $
dove $I_0 = I (x = 0)$ e il coefficiente $mu$:
$ mu_"p.e."
  = n_A sigma_"p.e."
  = (N_0 rho) / A sigma_"p.e."
  tilde.op Z^4 / ?? $

== Effetto Compton

L'_effetto Compton_ descrive una diffusione elastica di fotoni su elettroni
liberi, ovvero elettroni tali che $E_gamma >> "enegia di legame" e^-$:
$
  gamma e^- -> gamma e^-
$

// TODO: include figure

I quadrimpulsi:
$
  P_1 = (E, va(p)),
  #h(1cm)
  P_2 = (M, 0),
  #h(1cm)
  P_1' = (E', va(p)'),
  #h(1cm)
  P_2' = (E_x, va(p)')
$

$
  E + M = E' + E_x
$
con $E_x^2 = M^2 + |va(p)_x|^2$
$
 va(p) = va(p)' + va(p)_x
$
Quindi, dato $E_x = E + M - E'$:
$ 
  E_x^2 = E^2 + M^2 +E'^2 + 2 E M - 2 E E' - 2 E' M
$
$
  => M^2 + |va(p)_x|^2 ??
$
Allora.
$
  M^2 2m
$

$
  |va(p)|_x^2 = |va(p) - va(p)'|^2 = |va(p)|^2 + |va(p)'|^2 - 2 p p' cos theta
$
Sostituendo nella relazione precendente:
$
  M^2
  = 2m^2 + M^2  + 2 E M - 2 E' M - 2 E E' + |va(p)|^2 + |va(p)'|^2 - |va(p)|^2 + |va(p)'|^2  + 2 p p' cos theta
$
allora:
$
  m^2 + E M - E' M - E E' + p p' cos theta = 0
$
Nell'ipotesi che la particella proiettile sia un $gamma$, allora $E >> m$,
$E' >> m$, dunque $p = E$, $p = E'$.
$
 => E ???
$
da cui:
$
 E' [E (1 - cos theta) + M] = E M
$
e in definitiva:
$
  E' = E / (1 + E / M (1 - cos theta))
$
Dove, nel caso la particella incidente sia un fotone, abbiamo $E = h nu$ e
$E' = h nu'$:
$
  nu' = nu / (1 + (h nu) / (m_e c^2) (1 - cos theta))
$
e in termini della lunghezza d'onda $lambda' = c / nu'$:
$
  lambda'
  = c / nu [1 + (h nu) / (m_e c^2) (1 - cos theta)]
  = lambda + (h nu c) / (m_e c^2 nu) (1 - cos theta)
  = lambda + h / (m_e c) (1 - cos theta)
$
Quindi:
$
  difference(lambda) = h / (m_e c) (1 - cos theta)
$
dove il fattore davanti alla parentesi è la lunghezza d'onda compton:
$
  lambda_c = h / (m_e c) 2.4 dot.c 10^(-10) "cm"
$

Abbiamo quindi che $E'_max = E$ si ottiene per $theta = 0$, mentre $E'_min$ si
ha per $theta = pi$. È da notare che:
$
  E'_min = E (theta = pi) = 1 / 2 m_e c^2
$
che corrisponde all'energia massima dell'elettrone.

=== Sezione d'urto Compton (Klein-Nishina)

La sezione d'urto differenziale per un fenomeno di effetto Compton ad _alte
energie_ (ovvero energie molto maggiori della massa dell'elettrone, che è la
particella target):
$
  dv(sigma, Omega) = r_e^2 / 2 ((E') / E)^2 ((E') / E + E / (E') - sin^2 theta)
$
integrando per ottenere la sezione d'urto totale, definendo e sostituendo
$epsilon = E / m_e c^2$ nella sezione d'urto differenziale:
$
  sigma_c
  = 2 pi r_e^2 {2 / epsilon^2 [1 - (1 + epsilon) / (2 epsilon) ln (1 + 2 epsilon)] + 1 / (2 epsilon) ln (1 + 2 epsilon) + (1 - epsilon) / (1 + 2 epsilon)^2}
$
Nel caso $E >> m_e c^2$, allra abbiamo $epsilon >> 1$ e:
$
  sigma_c tilde.eq pi r_e^2 (ln (2 epsilon)) / epsilon
$
Si può notare (si ottiene rigorosamente dall'elettrodinamica quantistica) che:
$
  sigma_c prop r_e^2 prop e^4 prop alpha^2
$

Nel caso di _bassa energia_, ovvero nel regime $E << m_e c^2$ ($E -> E'$),
si utilizza la _sezione d'urto Thomson_:
$
  dv(sigma, Omega) = r_e^2 / 2 (2 - sin^2 theta)
$
dove al solito $r_e$ rappresenta il _raggio classico dell'elettrone_.
La sezione d'urto totale di Thomson si ottiene integrando in angolo solido
$Omega$:
$
  sigma_T = integral dv(sigma, Omega) dd(Omega) = 8 / 3 pi r_e^2
$

=== Coefficiente di assorbimento

Il coefficiente di assorbimento per effetto Compton:
$
  mu_c = n_e sigma_c = (N_A Z) / A rho sigma_c prop (ln E) / E
$
dove $N_A$ è il _numero di Avogadro_.

== Produzione di coppie $e^+ e^-$

La _produzione di coppie $e^+ e^-$_ è un processo a soglia del tipo:
$
  gamma + N -> N + e^+ + e^-
$
Questo è un fenomeno analogo alla Bremsstrahlung (ed è evidente nella
trattazione formale di elettrodinamica quantistica).

La soglia del processo di produzione di coppie elettrone-positrone è
$E_gamma^((s)) = 2 m_e c^2$.

=== Sezione d'urto differenziale

La sezione d'urto differenziale del processo di produzione di coppie
elettrone-positrone:
$ 
  dv(sigma, E) = 4 alpha r_e^2 Z^2 (F (E, E')) / (E')
$
dove $F (E, E')$ è una funzione delle energie del positrone e dell'elettrone.
Analogamente a quanto visto per il processo di Bremsstrahlung, nella condizione
di energia $2 m_e c^2 << E << m_e c^2 (Z^(-1 / 3)) / alpha $
(_carica del nucleo non schermata_):
$
  integral_0^(E - 2 m_e c^2) (F (E, E')) / (E') dd(E')
  = 7 / 9 ln (2 E) / (m_e c^2) - 109 / 54
$
Nel regime $E >> m_e c^2 Z^(-1 / 3) / alpha$ 
(_carica del nucleo parzialmente schermata_):
$
  integral_0^(E - 2 m_e c^2) (F (E, E')) / (E') dd(E')
  = 7 / 9 ln [183 Z^(-1 / 3)] - 1 / 54
$

=== Coefficiente di assorbimento

Il coefficiente di assorbimento per produzione di coppie elettrone-positrone:
$
  mu_"p.c." = (N_A rho) / A sigma_"p.c."
  = 4 alpha r_e^2 Z^2 (N_A rho) / A dot.c 7 / 9 ln [183 Z^(-1 / 3)]
$
Utilizzando la _lunghezza di radiazione_ 
(caratteristica del materiale, @lunghezza_radiazione):
$
  mu_"p.c." = 7 / (9 x_0)
$

L'intensità elettromagnetica segue la _legge di Lambert-Beer_:
$
  I = I_0 e^(-mu x)
$
dove $mu$ è il coefficiente di assorbimento e $x$ lo spessore percorso
all'intero del materiale.

= Sciami elettrofotonici

Nel regime $E >> m_e c^2$, i processi di produzione di coppie e di
Bremsstrahlung:
$
  e^(+,-) N -> N e^(+,-) gamma \
  gamma N -> e^+ e^- N
$
sono dominanti e avvengono produzione di particelle che causano i cosiddetti
_sciami elettrofotonici_.

Questo avviene entro un certo limite, l'_energia critica_, oltre la quale i
processi di produzione di coppie e Bremsstrahlung non sono più dominanti,
mentre lo diventano effetti come quello della perdita di energia per
ionizzazione.

$
  (dv(E, x))_? = 4 alpha r_e^2 (N_a Z^2) / A E ln[183 Z^(-1 / 3)] \
  (dv(E, x))_"ion" = 4 pi r_e^2 m_e c^2 (N_A Z) / A 1 / beta^2 (ln (2 m_e c^2
  beta^2 gamma^2) / expval(I) - beta^2)
$

$
  ? / eval(dv(E, x))_ "ion" tilde.eq ? / (1600 m_e c^2) = 1
$

$
  ???
$

L'energia critica assume valore minore per materiali "più densi".

== Modello di Heitler

Per illustrare il _modello di Heitler_ poniamo le seguenti ipotesi:
- la particella primaria ha un'energia $E$ molto maggiore dell'energia critica
  del materiale, $E >> E_c$;
- $mu$ è lo stesso per $e^(+,-)$ e $gamma$, quindi possiamo considerare
  un'unico cammino medio di radiazione $x_0$ per le tre;
- dopo ogni lunghezza di radiazione $x_0$, una particella produce due
  secondarie con certezza (trascuriamo tutti gli effetti stocastici):
  $
    e^(+,-) -> e^(+,-) + gamma \
    gamma -> e^+ + e^- \
    E_gamma -> E_(e^(+,-)) = E_gamma / 2
  $
- i secondari sono emessi in avanti, quindi ad angoli molto piccoli;
- i secondari non cedono energia al mezzo in cui si propagano se la loro
  energia è maggiore dell'energia critica;
- la moltiplicazione di particelle si arresta quando l'energia del secondario è
  pari all'energia critica $E < E_c$.

Supponiamo ora di avere un elettrone primario di energia $E_0$.
Dopo una lunghezza di radiazione $x_0$:
$
  underbrace(e, E_0) -> underbrace(e, E_0 / 2) + underbrace(gamma, E_0 / 2) \
  => underbrace(gamma, E_0 / 2) -> underbrace(e^+, E_0 / 4) + underbrace(e^-, E_0 / 4)
$
Dopo $t$ lunghezze di radiazione:
$ 
  N_t = 2^t "particelle"
  => E = E_0 / 2^t
$
Iterando fino all'_energia critica_ abbiamo:
$
  N_max = E_0 / E_c = 2^(T_max) \
  => log N_max = log E_0 / E_c = T_max log 2 \
  => T_max = (log E_0 / E_c) / log 2 tilde.eq 10 / 3 log E_0 / E_c
$
oppure in termini di $ln$:
$
  T_max = 1.5 ln E_0 / E_c
$

=== Raggio di Moliere

// TODO: figura
Il fenomeno dello sciame elettrofotonico è un fenomeno tridimensionale che
diffuso grazie allo _scattering coulombiano multiplo_. In questo contesto,
*raggio di Moliere*:
$
  expval(R_m) = (21 "MeV") / E_c x_0
$
è il raggio che contiene il 95% dell'energia dello sciame.

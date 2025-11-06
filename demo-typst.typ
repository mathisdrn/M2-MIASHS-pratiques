#set document(title: "Démonstration Typst", author: "Démo")
#set page(numbering: "1", number-align: center)
#set text(font: "New Computer Modern", lang: "fr")

#align(center)[
  #text(size: 24pt, weight: "bold")[Démonstration Typst]

  #v(0.5em)
  #text(size: 14pt)[Un Tour Rapide des Capacités de Typst]

  #v(1em)
  #text(size: 12pt, style: "italic")[Novembre 2025]
]

#v(2em)

= Introduction

Typst est un système de composition moderne basé sur le balisage, conçu pour être puissant tout en restant facile à apprendre et à utiliser. Ce document démontre certaines de ses fonctionnalités clés.

== Formatage du Texte

Vous pouvez mettre du texte en *gras*, en _italique_, ou en `monospace`. Vous pouvez aussi les combiner : *_gras et italique_* ou `*gras monospace*`.

== Listes

Voici une liste non ordonnée :
- Premier élément
- Deuxième élément
  - Élément imbriqué
  - Autre élément imbriqué
- Troisième élément

Et une liste numérotée :
+ Première étape
+ Deuxième étape
+ Troisième étape

= Équations Mathématiques

Typst a un excellent support pour la notation mathématique.

Math en ligne : La formule quadratique est $x = (-b plus.minus sqrt(b^2 - 4a c)) / (2a)$.

Math en mode affichage :
$ integral_0^infinity e^(-x^2) dif x = sqrt(pi) / 2 $

Équations plus complexes :
$ sum_(k=1)^n k = (n(n+1)) / 2 $

$
  mat(
    1, 2, 3;
    4, 5, 6;
    7, 8, 9
  )
$

= Blocs de Code

```python
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

print(fibonacci(10))
```

```javascript
const saluer = (nom) => {
  console.log(`Bonjour, ${nom}!`);
};
saluer("Typst");
```

= Tableaux

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Nom*], [*Langage*], [*Année*],
  [Typst], [Rust], [2023],
  [LaTeX], [TeX], [1984],
  [Markdown], [Perl], [2004],
)

= Figures et Images

#figure(
  rect(width: 60%, height: 100pt, fill: gradient.linear(blue, purple)),
  caption: [Un simple rectangle dégradé],
)

= Fonctionnalités Avancées

== Fonctions Personnalisées

#let alerte(corps) = {
  rect(
    fill: rgb("#ff6b6b20"),
    stroke: rgb("#ff6b6b"),
    inset: 12pt,
    radius: 4pt,
    width: 100%,
  )[
    #text(fill: rgb("#c92a2a"), weight: "bold")[⚠ Alerte :] #corps
  ]
}

#alerte[Ceci est une boîte d'alerte personnalisée créée avec les fonctions Typst !]

== Couleurs et Style

#grid(
  columns: 4,
  gutter: 5pt,
  rect(fill: red, width: 100%, height: 30pt),
  rect(fill: green, width: 100%, height: 30pt),
  rect(fill: blue, width: 100%, height: 30pt),
  rect(fill: yellow, width: 100%, height: 30pt),
)

= Conclusion

Ce document présente seulement une fraction de ce que Typst peut faire :
- Syntaxe claire et lisible
- Composition mathématique puissante
- Système de mise en page flexible
- Fonctions et styles personnalisés
- Compilation rapide

Essayez-le pour votre prochain document ! 🚀

#v(2em)

#align(center)[
  #text(size: 10pt, fill: gray)[
    Créé avec #link("https://typst.app")[Typst]
  ]
]

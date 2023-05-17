#import "notes.typ": notes

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(
  title: "",
  abstract: none,
  authors: (),
  date: none,
  logo: none,
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(paper: "a4")
  set text(
    font: "KpRoman",
    size: 10pt,
    lang: "it",
    number-type: "old-style",
    fractions: true,
  )
  set heading(numbering: "1.1.")
  set math.equation(numbering: "[1]")

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(0.6fr)
  if logo != none {
    align(right, image(logo, width: 26%))
  }
  v(9.6fr)

  text(1.1em, date)
  v(1.2em, weak: true)
  text(2em, weight: 700, title)

  // Author information.
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start)[
        *#author.name* \
        #author.email \
        #author.affiliation
      ]),
    ),
  )

  v(2.4fr)
  pagebreak()

  // Abstract page.
  if abstract != none {
    v(1fr)
    align(center)[
      #heading(
        outlined: false,
        numbering: none,
        text(0.85em, smallcaps[Abstract]),
      )
      #abstract
    ]
    v(1.618fr)
    pagebreak()
  }

  set page(
    numbering: "i",
  )
  counter(page).update(1)

  outline(indent: true)
  pagebreak()

  set page(
    numbering: "1/1",
    number-align: center,
    header: [
      #set align(center)
      #set text(size: 8pt, weight: "bold")
      #smallcaps[#title]
    ],
  )
  counter(page).update(1)

  // Main body.
  set par(first-line-indent: 1em, justify: true)

  body
}

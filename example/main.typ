#import "../lib.typ": entry, sense

#set page(
  width: 140mm,
  height: 210mm,
  margin: 16mm,
)

#set par(justify: true)

= Sample Dictionary

#entry(
  "Bank",
  pos: "n.",
  gender: "f.",
  sense("bench, pew", label: "Sitzgelegenheit"),
  sense("bank, financial institution", label: "Geldinstitut"),
)

#entry("Hund", gender: "m.", "dog, hound")

#entry(
  "laufen",
  pos: "v.",
  sense("to run, to walk", label: "allg."),
  sense("to function, to operate", label: "techn."),
)

#entry("heute", pos: "adv.", "today")

#entry(
  "alt",
  pos: "adj.",
  sense("old, aged"),
  sense("ancient, archaic", label: "geh."),
)

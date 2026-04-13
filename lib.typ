#let sense(translations, label: none) = (
  kind: "lexicon-sense",
  translations: translations,
  label: label,
)

#let _coerce-sense(value) = {
  if type(value) == str {
    sense(value)
  } else {
    value
  }
}

#let _normalize-senses(values) = {
  if values.len() == 0 {
    panic("entry() expects at least one sense.")
  }

  if values.all(value => type(value) == str) {
    (sense(values.join(", ")),)
  } else {
    values.map(value => _coerce-sense(value))
  }
}

#let _render-sense(item, number: none) = [
  #if number != none [
    #strong(str(number) + ".")
    #h(0.35em)
  ]
  #if item.label != none [
    #emph([(#item.label)])
    #h(0.35em)
  ]
  #item.translations
]

#let entry(headword, pos: none, gender: none, ..senses) = {
  let normalized = _normalize-senses(senses.pos())
  let rendered = if normalized.len() == 1 {
    (_render-sense(normalized.at(0)),)
  } else {
    normalized.enumerate().map(((index, item)) => _render-sense(item, number: index + 1))
  }

  block(
    above: 0.45em,
    below: 0.45em,
    [
      #strong(headword)
      #if pos != none [
        #h(0.35em)
        #emph(pos)
      ]
      #if gender != none [
        #h(0.35em)
        #emph(gender)
      ]
      #h(0.7em)
      #rendered.join(h(0.9em))
    ],
  )
}

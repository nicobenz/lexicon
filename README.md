# lexicon

`lexicon` is a Typst package for setting dictionary -- the book, not the data type, my lovely nerd -- entries in a classical, single-column book style. It supports monolingual and bilingual dictionaries with compact inline senses, optional grammatical metadata, and semantic labels.

## Features

- Bold headwords
- Italic part-of-speech and gender markers
- Single-sense entries without numbering
- Multi-sense entries with bold numbered senses
- Optional italic semantic labels such as `(fin.)` or `(arch.)`
- Simple flow layout without tables, columns, or rules

## Installation

WIP

## Usage

```typ
#entry(
  "Bank",
  gender: "f.",
  sense("bench, pew", label: "Sitzgelegenheit"),
  sense("bank, financial institution", label: "Geldinstitut"),
)

#entry("Hund", gender: "m.", "dog, hound")
```

## API

### `sense(translations, label: none)`

Constructs a single sense value.

- `translations`: plain text or content containing the definition or translations
- `label`: optional semantic label rendered in italic parentheses

### `entry(headword, pos: none, gender: none, ..senses)`

Constructs a full dictionary entry.

- `headword`: the headword, rendered in bold
- `pos`: optional part-of-speech abbreviation, rendered in italic
- `gender`: optional gender abbreviation, rendered in italic
- `..senses`: one or more senses

If exactly one sense is present, numbering is suppressed. When multiple senses are present, each sense is numbered in bold. For convenience, passing a raw string instead of `sense(...)` creates a plain unlabeled sense.

## Example

See `example/main.typ` for a small sample dictionary covering single-sense and multi-sense entries, optional gender, optional part of speech, and semantic labels.

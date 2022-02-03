# Lookup Function in Free Sheet

- [Lookup Function in Free Sheet](#lookup-function-in-free-sheet)
  - [Lookup in Info Sheet](#lookup-in-info-sheet)
    - [UseCase 1: Fetch other sheet data](#usecase-1-fetch-other-sheet-data)
    - [UseCase 2: Show assessment series results in InfoSheet](#usecase-2-show-assessment-series-results-in-infosheet)
  - [lookup in AssessmentSheet](#lookup-in-assessmentsheet)

Lookup function or Lookup element?

> function

Excel Lookup function

`LOOKUP(検査値, 検査範囲, [対応範囲])` e.g. `LOOKUP(4.19, A2:A6, B2:B6)`

[![Image from Gyazo](https://i.gyazo.com/64a1d21ac70a38c28dfecd7967b2d1fc.jpg)](https://gyazo.com/64a1d21ac70a38c28dfecd7967b2d1fc)

## Lookup in Info Sheet

### UseCase 1: Fetch other sheet data

* sheet A has `country`
* sheet B has `Japanese Level`, if the `A.country == Japan` the Japanese is hidden.

So. we need a function not an element.

code:

```
lookup('InfoSheet', latest, 'A.country')
```

> The UseCase is not LOOKUP function, just a fetch.


### UseCase 2: Show assessment series results in InfoSheet

显示 2015～2022 MBO 中 `score`

code
```
lookup('type.MBO', 2015:2022, 'score')
```

## lookup in AssessmentSheet

评价最好是独立的，所以不要跨 AssessmentSheet 使用 lookup。
-- Main file, connecting all segments of the grammar into one object

let GTypes = ../utils/types.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "adjectivelike", mapValue = ./fragments/adjectivelike.dhall }
      , { mapKey = "headword", mapValue = ./fragments/headword.dhall }
      , { mapKey = "nounlike", mapValue = ./fragments/nounlike.dhall }
      , { mapKey = "origin", mapValue = ./fragments/origin.dhall }
      ]

in  grammar

-- Main file, connecting all segments of the grammar into one object

let GTypes = ../utils/types.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "card", mapValue = ./fragments/card.dhall }
      , { mapKey = "cardinal", mapValue = ./fragments/cardinal.dhall }
      , { mapKey = "minorcard", mapValue = ./fragments/minorcard.dhall }
      , { mapKey = "origin", mapValue = ./fragments/origin.dhall }
      , { mapKey = "suite", mapValue = ./fragments/suite.dhall }
      ]

in  grammar

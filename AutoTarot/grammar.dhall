-- Main file, connecting all segments of the grammar into one object

let GTypes = ../utils/types.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "card", mapValue = ./fragments/card.dhall }
      , { mapKey = "cardinal", mapValue = ./fragments/cardinal.dhall }
      , { mapKey = "majoraspect", mapValue = ./fragments/majoraspect.dhall }
      , { mapKey = "majorcard", mapValue = ./fragments/majorcard.dhall }
      , { mapKey = "majordefinite", mapValue = ./fragments/majordefinite.dhall }
      , { mapKey = "minorcard", mapValue = ./fragments/minorcard.dhall }
      , { mapKey = "origin", mapValue = ./fragments/origin.dhall }
      , { mapKey = "roman", mapValue = ./fragments/roman.dhall }
      , { mapKey = "romanunit", mapValue = ./fragments/romanunit.dhall }
      , { mapKey = "romanten", mapValue = ./fragments/romanten.dhall }
      , { mapKey = "romanhundred", mapValue = ./fragments/romanhundred.dhall }
      , { mapKey = "romanthousand", mapValue = ./fragments/romanthousand.dhall }
      , { mapKey = "suite", mapValue = ./fragments/suite.dhall }
      ]

in  grammar

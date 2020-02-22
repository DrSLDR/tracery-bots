-- Main file, connecting all segments of the grammar into one object

let GTypes = ../utils/types.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "origin", mapValue = ./fragments/origin.dhall }
      , { mapKey = "fullname", mapValue = ./fragments/fullname.dhall }
      ]

in  grammar

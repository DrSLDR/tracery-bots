-- Main file, connecting all segments of the grammar into one object

let GTypes = ../utils/types.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "origin", mapValue = ./grammar-fragments/origin.dhall }
      , { mapKey = "fullname", mapValue = ./grammar-fragments/fullname.dhall }
      ]

in  grammar

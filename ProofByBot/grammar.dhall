-- Main file, connecting all segments of the grammar into one object

let GTypes = ./../utils/types.dhall

let origins
    : GTypes.Fragment
    = ./grammar-fragments/origin.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "origin", mapValue = origins } ]

in  grammar

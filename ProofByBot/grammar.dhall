-- Main file, connecting all segments of the grammar into one object

let GTypes = ./../utils/types.dhall

let origins
    : GTypes.Fragment
    = ./grammar-fragments/origin.dhall

let fullnames
    : GTypes.Fragment
    = ./grammar-fragments/fullname.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "origin", mapValue = origins }
      , { mapKey = "fullname", mapValue = fullnames }
      ]

in  grammar

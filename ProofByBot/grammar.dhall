-- Main file, connecting all segments of the grammar into one object

let GTypes = ../utils/types.dhall

let grammar
    : GTypes.Grammar
    = [ { mapKey = "cardinal", mapValue = ./fragments/cardinal.dhall }
      , { mapKey = "cardinalpersonalname"
        , mapValue = ./fragments/cardinalpersonalname.dhall
        }
      , { mapKey = "cardinalnameset"
        , mapValue = ./fragments/cardinalnameset.dhall
        }
      , { mapKey = "dismissal", mapValue = ./fragments/dismissal.dhall }
      , { mapKey = "expletive", mapValue = ./fragments/expletive.dhall }
      , { mapKey = "fullname", mapValue = ./fragments/fullname.dhall }
      , { mapKey = "name", mapValue = ./fragments/name.dhall }
      , { mapKey = "nameset", mapValue = ./fragments/nameset.dhall }
      , { mapKey = "reply", mapValue = ./fragments/reply.dhall }
      , { mapKey = "type", mapValue = ./fragments/type.dhall }
      , { mapKey = "origin", mapValue = ./fragments/origin.dhall }
      , { mapKey = "qualifier", mapValue = ./fragments/qualifier.dhall }
      ]

in  grammar

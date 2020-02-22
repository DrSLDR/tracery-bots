-- Main file, connecting all segments of the grammar into one object

let Map =
      https://prelude.dhall-lang.org/Map/package.dhall sha256:598e9c76103b2686fbbda6cc30078f9e60dd846d9eaf155d0149cf0ae06c21c5

let Fragment
    : Type
    = List Text

let Grammar
    : Type
    = Map.Type Text Fragment

let origins = ./grammar-fragments/origin.dhall

let grammar
    : Grammar
    = [ { mapKey = "origin", mapValue = origins } ]

in  grammar

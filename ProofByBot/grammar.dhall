-- Main file, connecting all segments of the grammar into one object

let Map =
      https://prelude.dhall-lang.org/Map/package.dhall sha256:598e9c76103b2686fbbda6cc30078f9e60dd846d9eaf155d0149cf0ae06c21c5

let PList =
      https://prelude.dhall-lang.org/List/package.dhall sha256:67899380860ce07a2d5d9530dc502800f2c11c73c2d64e8c827f4920b5473887

let JSON =
      https://prelude.dhall-lang.org/JSON/package.dhall sha256:88c358783defee9bbd65aea224cdac56c7666ba367b0dd5f7f6d56de73911292

let Fragment
    : Type
    = List Text

let EncodedFragment
    : Type
    = List JSON.Type

let Grammar
    : Type
    = Map.Type Text EncodedFragment

let origins
    : Fragment
    = ./grammar-fragments/origin.dhall

let mapToJSON
    : List Text → List JSON.Type
    = λ(l : List Text) → PList.map Text JSON.Type JSON.string l

let grammar
    : Grammar
    = [ { mapKey = "origin", mapValue = mapToJSON origins } ]

in  grammar

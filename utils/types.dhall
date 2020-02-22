-- Grammar types

let JSON =
      https://prelude.dhall-lang.org/JSON/package.dhall sha256:88c358783defee9bbd65aea224cdac56c7666ba367b0dd5f7f6d56de73911292

let Map =
      https://prelude.dhall-lang.org/Map/package.dhall sha256:598e9c76103b2686fbbda6cc30078f9e60dd846d9eaf155d0149cf0ae06c21c5

let Fragment
    : Type
    = List Text

let Grammar
    : Type
    = Map.Type Text Fragment

let JSONFragment
    : Type
    = List JSON.Type

let JSONArrayFragment
    : Type
    = JSON.Type

let JSONGrammar
    : Type
    = Map.Type Text JSON.Type

let Weighted
    : Type
    = { text : Text, weight : Natural }

in  { Fragment = Fragment
    , Grammar = Grammar
    , JSONFragment = JSONFragment
    , JSONArrayFragment = JSONArrayFragment
    , JSONGrammar = JSONGrammar
    , Weighted = Weighted
    }

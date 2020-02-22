-- Grammar generation utilities

let GTypes = ./types.dhall

let PList =
      https://prelude.dhall-lang.org/List/package.dhall sha256:67899380860ce07a2d5d9530dc502800f2c11c73c2d64e8c827f4920b5473887

let generateFragment
    : List GTypes.Fragment → GTypes.Fragment
    = λ(fraglist : List GTypes.Fragment) → PList.concat Text fraglist

let ignoreFunction
    : Text → Natural → Text
    = λ(t : Text) → λ(x : Natural) → t

let weightFragment
    : GTypes.Weighted → GTypes.Fragment
    =   λ(e : GTypes.Weighted)
      → PList.generate e.weight Text (ignoreFunction e.text)

let weightFragments
    : List GTypes.Weighted → GTypes.Fragment
    =   λ(weightList : List GTypes.Weighted)
      → generateFragment
          (PList.map GTypes.Weighted GTypes.Fragment weightFragment weightList)

in  { generateFragment = generateFragment
    , weightFragment = weightFragment
    , weightFragments = weightFragments
    }

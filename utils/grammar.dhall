-- Grammar generation utilities

let GTypes = ./types.dhall

let PList =
      https://prelude.dhall-lang.org/List/package.dhall sha256:67899380860ce07a2d5d9530dc502800f2c11c73c2d64e8c827f4920b5473887

let generateFragment
    : List GTypes.Fragment → GTypes.Fragment
    = λ(fraglist : List GTypes.Fragment) → PList.concat Text fraglist

in  generateFragment

let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 4 "#nameset#"
      , util.makeWeight 1 "#cardinal# #nameset#"
      ]

in  util.weightFragments weightList

let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 4 "the #cardinalnameset# #type#"
      , util.makeWeight 4 "#cardinalpersonalname# #type#"
      , util.makeWeight 1 "the #cardinalnameset# #qualifier# #type#"
      , util.makeWeight 1 "#cardinalpersonalname# #qualifier# #type#"
      ]

in  util.weightFragments weightList

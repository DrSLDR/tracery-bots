let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 4 "#expletive.capitalize#! #dismissal#"
      , util.makeWeight 4 "How #expletive#! #dismissal#"
      , util.makeWeight 4 "#dismissal#"
      , util.makeWeight 1 "Bah."
      , util.makeWeight 1 "Rude."
      , util.makeWeight 1 "No."
      ]

in  util.weightFragments weightList

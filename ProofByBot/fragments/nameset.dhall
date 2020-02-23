let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 3 "#name#"
      , util.makeWeight 5 "#name#-#name#"
      , util.makeWeight 1 "#name#-#name#-#name#"
      ]

in  util.weightFragments weightList

let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 5 "#romanhundred#"
      , util.makeWeight 10 "#romanten#"
      , util.makeWeight 1 "#romanthousand#"
      , util.makeWeight 1 "#romanthousand##romanhundred#"
      , util.makeWeight 1 "#romanthousand##romanhundred##romanten#"
      , util.makeWeight 1 "#romanthousand##romanhundred##romanten##romanunit#"
      , util.makeWeight 1 "#romanthousand##romanhundred##romanunit#"
      , util.makeWeight 1 "#romanthousand##romanten#"
      , util.makeWeight 1 "#romanthousand##romanten##romanunit#"
      , util.makeWeight 1 "#romanthousand##romanunit#"
      , util.makeWeight 5 "#romanhundred##romanten#"
      , util.makeWeight 5 "#romanhundred##romanunit#"
      , util.makeWeight 10 "#romanhundred##romanten##romanunit#"
      , util.makeWeight 25 "#romanten##romanunit#"
      , util.makeWeight 10 "#romanunit#"
      ]

in  util.weightFragments weightList

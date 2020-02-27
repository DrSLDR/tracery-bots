let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 1 "#majorcard#", util.makeWeight 5 "#minorcard#" ]

in  util.weightFragments weightList

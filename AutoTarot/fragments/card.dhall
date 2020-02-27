let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 1 "#majorcard#", util.makeWeight 5 "The #minorcard#" ]

in  util.weightFragments weightList

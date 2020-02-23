let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 4 "#name#'s", util.makeWeight 1 "#name#'s #cardinal#" ]

in  util.weightFragments weightList

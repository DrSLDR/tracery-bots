let util = ../../utils/grammar.dhall

let weightList = [ util.makeWeight 10 "", util.makeWeight 1 "Project " ]

in  util.weightFragments weightList

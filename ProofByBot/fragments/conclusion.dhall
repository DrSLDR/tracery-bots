let util = ../../utils/grammar.dhall

let weightList =
      [ util.makeWeight 10 "conclusive in the positive."
      , util.makeWeight 10 "conclusive in the negative."
      , util.makeWeight
          5
          "conclusive in the positive. These were not the desired results so further study is recommended."
      , util.makeWeight
          5
          "conclusive in the negative. These were not the desired results so further study is recommended."
      , util.makeWeight
          5
          "conclusive in the positive. These were not the expected results so further study is recommended."
      , util.makeWeight
          5
          "conclusive in the negative. These were not the expected results so further study is recommended."
      , util.makeWeight 10 "inconclusive. Further study is recommended."
      , util.makeWeight 10 "inconclusive due to lack of funding."
      , util.makeWeight 10 "inconclusive due to lack of time."
      , util.makeWeight 2 "inconclusive due to lack of interest."
      , util.makeWeight
          1
          "inconclusive. No further research is needed. This field is cursed."
      , util.makeWeight
          1
          "inconclusive. No further research is needed. We have seen all there is to see."
      , util.makeWeight 2 "withheld for copyright reasons."
      , util.makeWeight 2 "withheld for licensing reasons."
      , util.makeWeight 2 "sealed by a court of competent jurisdiction."
      , util.makeWeight 2 "stolen."
      , util.makeWeight 2 "eaten by a wild dog."
      , util.makeWeight 2 "lost. Further funding needed."
      ]

in  util.weightFragments weightList

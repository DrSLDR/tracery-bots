-- Practically just feeds out a grammar in a form that can be understood by
-- dhall-to-json, for exporting to online grammar textboxes

let JSON =
      https://prelude.dhall-lang.org/JSON/package.dhall sha256:88c358783defee9bbd65aea224cdac56c7666ba367b0dd5f7f6d56de73911292

let GTypes = ./utils/types.dhall

let JUtils = ./utils/json-utils.dhall

let proofbybot = ./ProofByBot/grammar.dhall

let autotarot = ./AutoTarot/grammar.dhall

let squareul = ./SquareUnderline/grammar.dhall

let Grammar
    : Type
    = < ProofByBot | AutoTarot | SquareUnderline | nil >

let getGrammar
    : Grammar → GTypes.Grammar
    =   λ(x : Grammar)
      → merge
          { ProofByBot = proofbybot
          , AutoTarot = autotarot
          , SquareUnderline = squareul
          , nil = [] : GTypes.Grammar
          }
          x

let getJSONGrammar
    : Grammar → JSON.Type
    = λ(g : Grammar) → JSON.object (JUtils.encodeGrammar (getGrammar g))

in  { Grammar = Grammar
    , getGrammar = getGrammar
    , getJSONGrammar = getJSONGrammar
    }

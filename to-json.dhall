-- Practically just feeds out a grammar in a form that can be understood by
-- dhall-to-json, for exporting to online grammar textboxes

let JSON =
      https://prelude.dhall-lang.org/JSON/package.dhall sha256:88c358783defee9bbd65aea224cdac56c7666ba367b0dd5f7f6d56de73911292

let GTypes = ./utils/types.dhall

let proofbybot = ./ProofByBot/grammar.dhall

let Grammar
    : Type
    = < ProofByBot | nil >

let getGrammar
    : Grammar → GTypes.Grammar
    =   λ(x : Grammar)
      → merge { ProofByBot = proofbybot, nil = [] : GTypes.Grammar } x

in  { Grammar = Grammar, getGrammar = getGrammar }
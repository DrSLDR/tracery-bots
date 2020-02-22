-- Evil sort of hack to replace Tracery's own Grammar file with the grammar
-- I am currently developing

let JSON =
      https://prelude.dhall-lang.org/JSON/package.dhall sha256:88c358783defee9bbd65aea224cdac56c7666ba367b0dd5f7f6d56de73911292

let export = ./to-json.dhall

let toLocal
    : Text → Text
    =   λ(grammar : Text)
      → ''
        var grammars = {
            evaluation :
                ${grammar},
        }
        ''

let getJSGrammar
    : export.Grammar → Text
    = λ(g : export.Grammar) → toLocal (JSON.render (export.getJSONGrammar g))

in  { getJSGrammar = getJSGrammar, Grammar = export.Grammar }

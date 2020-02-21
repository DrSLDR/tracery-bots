-- Evil sort of hack to replace Tracery's own Grammar file with the grammar I am currently developing

let toLocal : Text -> Text =
    \(grammar : Text) ->
''
var grammars = {
    proofbybot :
        ${grammar}
}
''

in toLocal

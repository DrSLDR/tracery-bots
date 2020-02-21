-- Main file, connecting all segments of the grammar into one object

let origins = ./grammar-fragments/origin.dhall

let grammar =
{
    origin = origins
}

in grammar
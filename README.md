# Tracery Bots

_Tracery configurations for (Dr)SLDR's Twitter and Mastodon bots_

This repository contains the Dhall files that construct the JSON files which, in
turn, are the  [Tracery](http://www.tracery.io/) grammar for my bots. Twitter
bots are run on [Cheap Bots, Done Quick](https://cheapbotsdonequick.com/) and
the Mastodon bots are run on [Cheap Bots, Toot
Sweet](https://cheapbotstootsweet.com/).

## ProofByBot

[@ProofByBot](https://twitter.com/ProofByBot) on Twitter, not yet on Mastodon

A humorous take on dense academic papers, employing Proof by Intimidation.
Generating real-sounding but probably fake citations, lemmas, theses, and
whatnot.

Name list always needs expansion, and perhaps some more variety of fancy words.
It should also swear less when interacted with, but I haven't yet worked out a
good alternative.

## AutoTarot

Not yet on any network. Still figuring this one out.

Need your fortune told? Need some life advice? AutoTarot can help, by drawing
cards that are almost certainly _not_ in any ordinary tarot deck.

## Square Underline

[@SquareUnderline](https://twitter.com/SquareUnderline) on Twitter, not yet on
Mastodon.

Square Enix makes some pretty word-salady names for their games, don't they?
This bot pokes fun at that, jamming two (or three) seemingly unrelated words in
the english language together.

Square, don't sue me please.

# Usage

Generating the grammars is done using Dhall. To generate the PBB grammar, do:

```
$ dhall-to-json <<< "let t = ./to-json.dhall in t.getJSONGrammar t.Grammar.ProofByBot" > some.json
```

You should see what needs to be replaced to generate one of the other grammars.
There's also a `to-local-tracery` file that generates JS code that can be
plugged into a local (hacked) version of Tracery, for testing. YMMV.

The generated files should plug straight into Tracery. Feel free to use these
files as you wish, or suggest additions to me. I'd ask you to not use these
files as they are, creating identical bots, but hey, I can't stop you
¯\\\_(ツ)\_/¯

# Is it any good?
[yes.](https://news.ycombinator.com/item?id=3067434)

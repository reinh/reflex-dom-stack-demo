# Getting Started with Reflex Dom and Stack

## Install Stack

1. Install Stack on OS X with `brew install haskell-stack`. Instructions for other
   platforms are available in the
   [Stack documentation](http://docs.haskellstack.org/en/stable/README.html).

2. Ensure that `$HOME/.local/bin/` is in your `$PATH`. For bash, add
   `PATH=$HOME/.local/bin:$PATH` to your `~/.bashrc`.

3. Upgrade Stack with `stack upgrade --git`. You will need to use Stack
   built from git with GHCJS.

## Build the Project

    stack setup # first time only
    stack build

## Open the Page

    open `stack path --local-install-root`/bin/reflex-dom-stack-demo.jsexe/index.html

## :warning: A Note About the `stack.yaml` :warning:

GHCJS, `ghcjs-dom`, and the Reflex packages are in a state of flux and you
should expect breaking API changes to happen at any time. The versions of the
GHCJS compiler, `ghcjs-dom`, `reflex`, and `reflex-dom` used in this project
were carefully chosen to (1) actually build and (2) use the recent "improved
base" updates to GHCJS along with the most recent `reflex-dom` branch that
supports them, the `ghcjs-improved-base-2` branch. Use other versions at your
own risk.

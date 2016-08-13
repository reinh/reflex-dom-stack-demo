# Getting Started with Reflex Dom and Stack

An example [Reflex Dom](https://hackage.haskell.org/package/reflex-dom) project
that builds with [Stack](https://hackage.haskell.org/package/reflex-dom).

## Install Stack

Install Stack on OS X with `brew install haskell-stack`. Instructions for other platforms are available in the
   [Stack documentation](http://docs.haskellstack.org/en/stable/README.html). Ensure that Stack is at least version 1.8.
   
## Install Executable Dependencies

Dependencies on executables aren't managed by stack or cabal, so we need to install them ourselves.

    stack install happy
    
**IMPORTANT:** Ensure that `$HOME/.local/bin` is in your `PATH`.

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

## Troubleshooting

    /usr/bin/ld: cannot find -ltinfo

Apparently, stack sometimes tries to link to the terminfo library... for... reasons? You can fix this by installing ncurses developer libraries. On Debian based systems (like Ubuntu), the remedy is:

    sudo apt-get install libncurses5-dev


## Thanks

Thanks to everyone involved in making GHCJS and Reflex, and especially to luigy
on Freenode for gracious support in #reflex-frp and the
[try-stack-reflex](https://github.com/luigy/try-stack-reflex) repository, on
which this one is largely based.

module Main where

import           Reflex
import           Reflex.Dom

main :: IO ()
main = mainWidget $ el "h1" $ text "Hello Reflex!"

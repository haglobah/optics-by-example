-- |

module Main where

import HaskellSay (haskellSay)
import OpticsImports (lala)

main :: IO ()
main =
  haskellSay "Hello, Haskell" >> lala "hoho"

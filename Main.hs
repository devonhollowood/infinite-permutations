module Main where

import qualified Math.Combinatorics.Multiset as M
import Data.List (isInfixOf)

main :: IO ()
main = print
     . length
     . filter (not . \p -> any ($ p) (map isInfixOf ["INN", "FIN", "NET"]))
     . M.permutations
     . M.fromList $ "INFINITE"

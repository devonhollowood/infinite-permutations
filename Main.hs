module Main where

import qualified Math.Combinatorics.Multiset as M
import Data.List (isInfixOf)

main :: IO ()
main = print
     . length
     . filter (\perm -> not $ any (`isInfixOf` perm) ["INN", "FIN", "NET"])
     . M.permutations
     . M.fromList $ "INFINITE"

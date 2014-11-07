Please check the syntax of your palette file
  /Users/Cu3PO42/development/pdm-142/main.hs:3: syntax error, unexpected tIDENTIFIER, expecting keyword_end
/Users/Cu3PO42/development/pdm-142/main.hs:7: syntax error, unexpected ( arg, expecting keyword_end
main :: IO ()
            ^
/Users/Cu3PO42/development/pdm-142/main.hs:8: syntax error, unexpected keyword_do_block
/Users/Cu3PO42/development/pdm-142/main.hs:11: syntax error, unexpected ->, expecting keyword_end
loop :: Int -> IO ()
              ^
/Users/Cu3PO42/development/pdm-142/main.hs:11: formal argument cannot be a constant
loop :: Int -> IO ()
                 ^
/Users/Cu3PO42/development/pdm-142/main.hs:12: syntax error, unexpected keyword_do_LAMBDA
/Users/Cu3PO42/development/pdm-142/main.hs:13: syntax error, unexpected tIDENTIFIER, expecting keyword_do or '{' or '('
...putStrLn . (("For n=" ++ show n ++ ": ") ++) . show . sort ....
...                               ^
/Users/Cu3PO42/development/pdm-142/main.hs:13: syntax error, unexpected ')'
..."For n=" ++ show n ++ ": ") ++) . show . sort . simulate) [1...
...                               ^
/Users/Cu3PO42/development/pdm-142/main.hs:15: syntax error, unexpected [, expecting tCONSTANT
    where simulate :: [Int] -> [Int]
                       ^
/Users/Cu3PO42/development/pdm-142/main.hs:15: syntax error, unexpected ->, expecting keyword_end
    where simulate :: [Int] -> [Int]
                              ^
/Users/Cu3PO42/development/pdm-142/main.hs:16: syntax error, unexpected '=', expecting keyword_end
          simulate [x] = [x]
                        ^
/Users/Cu3PO42/development/pdm-142/main.hs:17: syntax error, unexpected '=', expecting keyword_end
          simulate [x, y] = [abs (x-y)]
                           ^
/Users/Cu3PO42/development/pdm-142/main.hs:17: syntax error, unexpected ']', expecting keyword_end
/Users/Cu3PO42/development/pdm-142/main.hs:18: syntax error, unexpected ':', expecting ')'
.... concat) [simulate ((abs x-y):ys) | x:y:ys <- permutations ...
...                               ^
/Users/Cu3PO42/development/pdm-142/main.hs:18: syntax error, unexpected tIDENTIFIER, expecting keyword_do or '{' or '('
...ys) | x:y:ys <- permutations xs]
...                               ^

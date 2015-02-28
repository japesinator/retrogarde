-- LOL WTF is Haskell

main :: IO ()
main = do putStrLn $ "Welcome to our patented sooper-sekure password checker"
                  ++ "\"It might be OK\""
                  ++ "\n"
                  ++ "Enter your gue^h^h^h password below"
          guess <- getLine
          putStrLn $ if guess == "BAKING_SODA"
                     then "Nice!, that's right, the password is BAKING_SODA"
                     else "lolnope"

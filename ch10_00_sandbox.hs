module Chapter_10_Sandbox where

getLine' :: IO String
getLine' = do x <- getChar
              if x == '\n' then
                return []
              else
                do xs <- getLine'
                   return (x:xs)

putStr' :: String -> IO ()
putStr' []     = return ()
putStr' (x:xs) = do putChar x
                    putStr' xs



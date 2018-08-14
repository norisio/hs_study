import System.Environment
import Data.List

main = do
  progName <- getProgName
  putStrLn progName
  args <- getArgs
  mapM_ putStrLn args

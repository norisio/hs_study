import System.Directory
import System.IO
import Data.List

main = do
  contents <- readFile "todo.txt"
  let todoTasks = lines contents
      numberedTasks = zipWith(\n line -> show n ++ ": " ++ line) [0..] todoTasks

  putStrLn "items:"
  mapM_ putStrLn numberedTasks
  putStrLn "Delete nth >"
  numberString <- getLine

  let number = read numberString
      newTodoItems = unlines $ delete (todoTasks !! number) todoTasks
      -- delete: リスト中最初の一致した要素をけす
  (tempName, tempHandle) <- openTempFile "." "temp"
  hPutStr tempHandle newTodoItems
  hClose tempHandle
  removeFile "todo.txt"
  renameFile tempName "todo.txt"


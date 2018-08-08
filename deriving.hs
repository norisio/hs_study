
data Person = Person { firstName :: String , lastName :: String , age :: Int } deriving(Eq, Show, Read)

taro = Person {firstName="tanaka", lastName="taro", age=13}
hanako = Person {firstName="okabe", lastName="hanako", age=11}

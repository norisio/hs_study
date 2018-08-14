
data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red        = True
  Yellow == Yellow  = True
  Green == Green    = True
  _ == _            = False

instance Show TrafficLight where
  show Red = "赤信号"
  show Yellow = "黄色信号"
  show Green = "青信号"

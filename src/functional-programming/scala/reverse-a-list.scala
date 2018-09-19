def f(arr:List[Int]):List[Int] = arr match {
  case h :: tail => f(tail) ::: List(h)
  case Nil => Nil
}
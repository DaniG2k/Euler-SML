use "tools.sml";

fun even_fibs (fib, acc)=
    case fib of
	[] => acc
      | x::xs => if x mod 2 = 0
		 then
		     even_fibs(xs, x::acc)
		 else
		     even_fibs(xs, acc)

val result = sum( even_fibs( fib(4000000), []) )

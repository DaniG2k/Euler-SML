(* Sum a list of integers *)
fun sum (lst)=
    let
	fun aux (lst, counter)=
	    case lst of
		[] => counter
	      | x::xs => aux (xs, counter + x)
    in
	aux(lst, 0)
    end

(* Fibonacci numbers up to n using iteration. *)
fun fib (n)=
    let
	fun aux (n1, n2, fib, limit, a)=
	    if fib < limit
	    then
		let val n2 = fib+n1
		    val fib = n1
		    val n1 = n2
		in
		    aux (n1, n2, fib, limit, fib :: a)
		end
	    else
		a
    in
	aux (1, 0, 0, n, nil)
    end

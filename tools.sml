open IntInf;

(* Find the greatest and smallest int in a list *)
fun min_max_helper (f, lst)=
    List.foldl (fn (x, y) => if f (x, y) then x else y) (hd lst) lst
fun max lst= min_max_helper(op >=, lst)
fun min lst= min_max_helper(op <=, lst)

(* Sum a list of integers *)
fun sum lst= List.foldl (fn (x,y) => x+y) 0 lst

(* Fibonacci numbers up to n using iteration. *)
fun fib n=
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

fun prime_factors n=
    if n > 0 andalso n <= 3 then [n]
    else
	let
	    val start = 2
	    val num = Math.sqrt(Real.fromLargeInt(n))
	    val sqr_of_num = (Real.toLargeInt IEEEReal.TO_NEAREST num) + 1
	    val stop = max [3, sqr_of_num]
	    fun aux (fac, stop, n, acc)=
		if fac > stop
		then acc
		else
		    if n mod fac = 0
		    then aux (fac+1, stop, n div fac, fac :: acc)
		    else aux (fac+1, stop, n, acc)
	in
	    aux (start, stop, n, nil)
	end	

use "tools.sml";

fun sum (lst)=
    let
	fun aux (lst, counter)=
	    case lst of
		[] => counter
	      | x::xs => aux (xs, counter + x)
    in
	aux(lst, 0)
    end

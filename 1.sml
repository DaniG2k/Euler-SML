fun mults_3_or_5 (i, c)=
    case c of
	1000 => i
      | c => if c mod 3 = 0 orelse c mod 5 = 0
	     then mults_3_or_5(c+i, c+1)
	     else mults_3_or_5(i, c+1);

val result = mults_3_or_5(0,1);

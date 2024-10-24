lemma isolate_variable:
  fixes a b c :: real
  assumes h0: "k * a + m * b = c" 
    and h1: "k \<noteq> 0"
  shows "a = (c - m * b) / k"
proof -
  have "k * a = c - m * b" using h0 by simp
  then show ?thesis by (metis h1 mult.commute nonzero_mult_div_cancel_right)
qed
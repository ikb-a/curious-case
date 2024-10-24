lemma linear_substitution:
  fixes a b :: real
  assumes h0: "m * a + n * b = k" 
    and h1: "a = v" 
  shows "m * v + n * b = k"
proof -
  have "m * a + n * b = m * v + n * b" using h1 by simp
  then show ?thesis using h0 by simp
qed
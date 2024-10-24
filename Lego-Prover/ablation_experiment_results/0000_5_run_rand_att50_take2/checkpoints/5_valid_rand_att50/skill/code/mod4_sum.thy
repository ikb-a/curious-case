lemma mod4_sum:
  fixes a b :: int
  shows "(a mod 4 + b mod 4) mod 4 = (a + b) mod 4"
proof -
  have "a mod 4 = (a + 0) mod 4" and "b mod 4 = (0 + b) mod 4" by simp_all
  then have "(a mod 4 + b mod 4) mod 4 = ((a + 0) + (0 + b)) mod 4" by presburger
  thus ?thesis by auto
qed
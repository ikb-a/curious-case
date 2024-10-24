lemma mod4_addition:
  fixes x y :: int
  shows "(x + y) mod 4 = ((x mod 4) + (y mod 4)) mod 4"
proof -
  have "x mod 4 + y mod 4 < 8" by (simp add: mod_less)
  then have "((x mod 4) + (y mod 4)) mod 4 = (x + y) mod 4"
    by presburger
  thus ?thesis by simp
qed
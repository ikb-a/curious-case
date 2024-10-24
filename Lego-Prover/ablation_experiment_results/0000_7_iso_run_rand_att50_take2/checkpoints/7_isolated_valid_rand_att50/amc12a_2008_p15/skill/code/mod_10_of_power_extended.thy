lemma mod_10_of_power_extended:
  fixes a n d :: nat
  assumes "a > 0" "d > 0" "n > 0"
  shows "a^n mod d = (a mod d)^n mod d"
proof -
  have "a^n mod d = ((a mod d) + (d * (a div d)))^n mod d"
    by auto
  also have "... = (a mod d)^n mod d" 
    by (simp add: assms(2) assms(3) power_mod)
  finally show ?thesis .
qed
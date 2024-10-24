lemma mod_of_power_general:
  fixes a n d :: nat
  assumes "a > 0" "d > 0"
  shows "a^n mod d = (a mod d)^n mod d"
proof -
  have "a^n mod d = (a mod d)^n mod d" 
    by (metis power_mod assms(1) assms(2))
  thus ?thesis by simp
qed
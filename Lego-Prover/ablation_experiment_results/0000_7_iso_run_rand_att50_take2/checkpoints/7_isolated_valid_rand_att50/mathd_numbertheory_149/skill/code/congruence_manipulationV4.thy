lemma congruence_manipulation:
  fixes a b m n :: nat
  assumes "a mod m = b" "n > 0"
  shows "(a + n) mod m = (b + n) mod m"
proof -
  have "(a + n) mod m = (a mod m + n) mod m" by presburger
  also have "... = (b + n) mod m" using assms(1) by (metis mod_add_left_eq)
  finally show ?thesis by auto
qed
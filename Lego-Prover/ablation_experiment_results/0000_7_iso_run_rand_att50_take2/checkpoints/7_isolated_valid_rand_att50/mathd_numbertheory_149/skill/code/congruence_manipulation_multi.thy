lemma congruence_manipulation_multi:
  fixes a b m n :: nat
  assumes "a mod m = b" "n > 0" "k > 0"
  shows "(a + n*k) mod m = (b + n*k) mod m"
proof -
  have "(a + n*k) mod m = (a mod m + n*k) mod m" by presburger
  also have "... = (b + n*k) mod m" using assms(1) by auto
  finally show ?thesis by auto
qed
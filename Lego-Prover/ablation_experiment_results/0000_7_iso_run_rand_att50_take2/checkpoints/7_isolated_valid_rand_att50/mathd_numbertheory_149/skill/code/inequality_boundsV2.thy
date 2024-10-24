lemma inequality_bounds:
  fixes x :: nat
  assumes "x < a" "x < b"
  shows "x < min a b"
proof -
  have "min a b = (if a < b then a else b)" by (simp add: min_def)
  moreover {
    assume "a < b"
    then have "min a b = a" by (simp add: min_def)
    hence "x < min a b" using assms(1) by simp
  }
  moreover {
    assume "b \<le> a"
    then have "min a b = b" by (simp add: min_def)
    hence "x < min a b" using assms(2) by simp
  }
  ultimately show ?thesis by auto
qed
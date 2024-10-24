lemma square_root_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "a < b"
  shows "sqrt a < sqrt b"
proof -
  have "sqrt a < sqrt b \<longleftrightarrow> sqrt a^2 < sqrt b^2" using assms by auto
  then show ?thesis by (metis assms(3) real_sqrt_less_mono)
qed
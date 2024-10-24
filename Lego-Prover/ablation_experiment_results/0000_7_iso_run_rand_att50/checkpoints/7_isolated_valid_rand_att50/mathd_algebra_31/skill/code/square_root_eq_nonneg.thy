lemma square_root_eq_nonneg:
  fixes a b :: real
  assumes "a = b" "0 \<le> a" "0 \<le> b"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b" 
    using assms(1) by simp
  thus ?thesis using assms(2) by simp
qed
lemma bound_check_general:
  fixes N :: nat and a b :: nat
  assumes "N < b" "N mod a = c" "c < a"
  shows "N \<in> {x::nat. x < b \<and> x mod a = c}"
proof -
  have "N < b" by (simp add: assms(1))
  moreover have "N mod a = c" by (simp add: assms(2))
  ultimately show ?thesis by auto
qed
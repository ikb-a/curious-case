lemma nonzero_division:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<exists>x. a * x = 1"
proof -
  let ?x = "1 / a"
  have "a * ?x = 1" by (simp add: assms)
  thus ?thesis by blast
qed
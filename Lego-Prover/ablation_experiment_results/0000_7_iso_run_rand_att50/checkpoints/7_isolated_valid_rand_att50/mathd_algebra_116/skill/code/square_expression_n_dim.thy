lemma square_expression_n_dim:
  fixes a b :: "real set"
  shows "(\<forall>x \<in> a. \<forall>y \<in> b. (x - y)^2 = x^2 - 2*x*y + y^2)"
proof -
  have "(\<forall>x \<in> a. (x - y)^2 = x^2 - 2*x*y + y^2)"
    for y 
    by (smt (verit) diff_add_eq power2_diff)
  then show ?thesis by auto
qed
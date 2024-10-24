lemma sqrt_square_multi:
  fixes a :: "real set"
  assumes "\<forall>x \<in> a. x >= 0"
  shows "\<forall>x \<in> a. sqrt x * sqrt x = x"
proof -
  have "\<forall>x \<in> a. sqrt x * sqrt x = x"
  proof
    fix x
    assume "x \<in> a"
    then have "x >= 0" using assms by auto
    thus "sqrt x * sqrt x = x" by (rule sqrt_square)
  qed
  thus ?thesis by blast
qed
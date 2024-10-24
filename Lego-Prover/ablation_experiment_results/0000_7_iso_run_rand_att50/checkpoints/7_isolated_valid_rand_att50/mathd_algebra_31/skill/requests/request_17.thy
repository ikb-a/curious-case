lemma sqrt_eq_square:
  fixes a b :: real
  assumes "b >= 0"
  shows "\<sqrt>a = b \<Longrightarrow> a = b^2"
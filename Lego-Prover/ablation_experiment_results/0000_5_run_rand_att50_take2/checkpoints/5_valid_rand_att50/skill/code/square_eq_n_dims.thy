lemma square_eq_n_dims:
  fixes a b :: "real list" 
  assumes "a = b"
  shows "map (\<lambda>x. x^2) a = map (\<lambda>x. x^2) b"
proof -
  have "length a = length b" using assms by auto
  then show ?thesis
    using assms by auto
qed
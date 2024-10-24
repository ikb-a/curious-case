lemma extend_dimensions_example:
  fixes a :: real
    and f :: "real \<Rightarrow> real"
  assumes h0 : "\<And>x. f x = a * (x - 2)^2 + 3" 
  shows "f (x + 2) = a * x^2 + 3"
proof -
  have "f (x + 2) = a * ((x + 2) - 2)^2 + 3" using h0 by simp
  thus ?thesis by simp
qed
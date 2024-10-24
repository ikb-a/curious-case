lemma sqrt_eq_2D:
  fixes x1 x2 y1 y2 :: real
  assumes "sqrt ((x1 - x2)^2 + (y1 - y2)^2) = d"
  shows "d^2 = (x1 - x2)^2 + (y1 - y2)^2"
proof -
  have "sqrt ((x1 - x2)^2 + (y1 - y2)^2) = d \<Longrightarrow> (x1 - x2)^2 + (y1 - y2)^2 = d^2"
    using assms by auto
  thus ?thesis by (metis assms)
qed
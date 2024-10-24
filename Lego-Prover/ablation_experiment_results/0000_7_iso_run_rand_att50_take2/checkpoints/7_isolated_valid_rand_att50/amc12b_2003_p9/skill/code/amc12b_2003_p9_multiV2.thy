theorem amc12b_2003_p9_multi:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f m - f n = k" 
    and "k = a * (m - n)"
  shows "f p - f n = a * (p - n)"
proof -
  have "f m - f n = (a * m + b) - (a * n + b)"
    using assms(1) by auto
  then have "f m - f n = a * (m - n)" by (auto simp: field_simps)
  then have "a * (m - n) = k" using assms(2) by (metis)
  have "f p - f n = (a * p + b) - (a * n + b)"
    using assms(1) by auto
  then have "f p - f n = a * (p - n)" by (auto simp: field_simps)
  thus ?thesis by simp
qed
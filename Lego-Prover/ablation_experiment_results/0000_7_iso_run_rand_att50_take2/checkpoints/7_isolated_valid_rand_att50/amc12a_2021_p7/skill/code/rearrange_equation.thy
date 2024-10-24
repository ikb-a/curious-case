lemma rearrange_equation:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "c * x = a * x + b"
  shows "a + b / x = c"
proof -
  have "c * x = a * x + b" using assms(2) by auto
  then have "x * (a + b / x) = c * x" by (auto simp: field_simps)
  thus ?thesis using assms(1) by auto
qed
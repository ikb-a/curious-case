lemma general_product_identity:
  fixes a b :: real
  assumes "a \<noteq> b"
    and "a + 2/a = b + 2/b"
  shows "a * b = 2"
proof -
  have eq: "a + 2/a = b + 2/b" using assms(2) by simp
  have rearranged: "a - b = (2/b - 2/a)" 
    using eq by (simp add: field_simps)
  have common_den: "a - b = (2 * (a - b)) / (a * b)"
    using rearranged by sos
  have factored: "1 = 2 / (a * b)"
    using assms(1) common_den by sos
  have "a * b = 2"
    using `1 = 2 / (a * b)` by (simp add: field_simps)
  thus ?thesis by simp
qed
theorem amc12a_generalized:
  fixes a b :: real
  assumes h0 : "a \<noteq> 0"
    and h1 : "b \<noteq> 0"
    and h2 : "a \<noteq> b"
    and h3 : "a + 2/a = b + 2/b"
  shows "a * b = 2"
proof -
  have eq: "a + 2/a = b + 2/b" using h3 by simp
  have rearranged: "a - b = (2/b - 2/a)" 
    using eq by (simp add: field_simps)
  have common_den: "a - b = (2 * (a - b)) / (a * b)"
    using rearranged by sos
  have factored: "a - b = (2 * (a - b)) / (a * b)"
    using common_den by blast
  have "1 = 2 / (a * b)"
    using h2 factored by sos
  have "a * b = 2"
    using `1 = 2 / (a * b)` by (simp add: field_simps)
  thus ?thesis by simp
qed
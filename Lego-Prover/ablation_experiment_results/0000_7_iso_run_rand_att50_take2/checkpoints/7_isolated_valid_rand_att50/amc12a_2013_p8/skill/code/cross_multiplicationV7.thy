lemma cross_multiplication:
  fixes x y :: real
  assumes "x \<noteq> y"
    and "x \<noteq> 0" "y \<noteq> 0"
    and "x + 2/x = y + 2/y"
  shows "(x - y) * (x * y) = 2 * (x - y)"
proof -
  have eq: "x + 2 / x = y + 2 / y" using assms(3) by (metis assms(4))
  have rearranged: "x - y = (2/y - 2/x)" using eq by (simp add: field_simps)
  then show ?thesis by sos
qed
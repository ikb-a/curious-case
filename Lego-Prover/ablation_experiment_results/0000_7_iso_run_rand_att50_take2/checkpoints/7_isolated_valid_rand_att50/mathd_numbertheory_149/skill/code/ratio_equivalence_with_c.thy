lemma ratio_equivalence_with_c:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c \<noteq> 0"
  shows "a / (b * c) = (a / b) * (1 / c)"
proof -
  have "a / (b * c) = a * (1 / (b * c))"
    by simp
  also have "... = a * (1 / b) * (1 / c)"
    by (simp add: divide_simps)
  finally show ?thesis
    by simp
qed
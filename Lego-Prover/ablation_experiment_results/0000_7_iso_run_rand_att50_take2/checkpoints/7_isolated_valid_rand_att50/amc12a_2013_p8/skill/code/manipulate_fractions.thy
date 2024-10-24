lemma manipulate_fractions:
  fixes a b :: real
  assumes "b \<noteq> 0" "a \<noteq> 0"
  shows "1/a - 1/b = (b - a)/(a*b)"
proof -
  have "1/a - 1/b = b/(a*b) - a/(a*b)" using assms by simp
  then show ?thesis by (smt (verit) diff_divide_distrib)
qed
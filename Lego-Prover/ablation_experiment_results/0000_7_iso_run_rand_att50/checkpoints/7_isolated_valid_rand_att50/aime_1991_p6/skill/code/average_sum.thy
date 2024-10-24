lemma average_sum:
  fixes s :: real
  assumes "n > 0"
  shows "s / n = avg \<Longrightarrow> s = n * avg"
proof -
  assume "s / n = avg"
  have "s = n * avg" 
  proof -
    have "n * avg = (n * avg) / 1" by simp
    hence "s = n * avg" using `s / n = avg` by (metis assms div_by_1 frac_eq_eq less_numeral_extra(3) mult.commute mult.right_neutral zero_neq_one)
    thus ?thesis by simp
  qed
  thus ?thesis by simp
qed
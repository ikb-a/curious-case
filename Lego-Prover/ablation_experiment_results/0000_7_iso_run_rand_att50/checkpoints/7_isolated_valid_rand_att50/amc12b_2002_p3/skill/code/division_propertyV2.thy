lemma division_property:
  fixes a b :: real
  assumes "b > 0"
  shows "a / b = c \<longleftrightarrow> a = c * b"
proof -
  have "b * (a / b) = a" using assms by auto
  then show ?thesis by (metis assms less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_left)
qed
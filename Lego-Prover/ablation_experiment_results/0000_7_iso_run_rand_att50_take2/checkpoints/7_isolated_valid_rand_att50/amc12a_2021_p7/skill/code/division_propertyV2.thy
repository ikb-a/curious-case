lemma division_property:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b = c * a"
  shows "b / a = c"
proof -
  have "b / a = (c * a) / a" using assms(2) by simp
  then have "b / a = c" using non_zero_division_generalized[of a c] assms(1) by auto
  thus ?thesis by simp
qed
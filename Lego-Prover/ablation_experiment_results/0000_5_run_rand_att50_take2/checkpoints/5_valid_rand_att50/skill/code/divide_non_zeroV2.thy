lemma divide_non_zero:
  fixes a b :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a / c = b / c"
proof -
  from assms(1) have "b = a" by auto
  then show ?thesis by (simp add: assms(2) field_simps)
qed
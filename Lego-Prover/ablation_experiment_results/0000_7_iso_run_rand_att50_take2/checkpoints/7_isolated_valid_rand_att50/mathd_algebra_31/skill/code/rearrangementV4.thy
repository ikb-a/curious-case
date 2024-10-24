lemma rearrangement:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  obtain x where "a = b + c" using assms by auto
  hence "a - c = b" by auto
  thus "b = a - c" by simp
qed
lemma find_valid_N:
  fixes N :: nat and m :: nat
  assumes "N < 50" and "m < 2"
  shows "N < 50"
proof -
  have "N < 50" using assms(1) by simp
  thus ?thesis by simp
qed
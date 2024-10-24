lemma add_inequality_n_dimensions:
  fixes a b c :: "real list" and n :: nat
  assumes "length a = n" "length b = n" "length c = n" "(\<forall>i < n. a ! i < b ! i)"
  shows "(\<forall>i < n. a ! i + c ! i < b ! i + c ! i)"
proof -
  have "\<forall>i < n. a ! i + c ! i < b ! i + c ! i"
  proof (rule allI, rule impI)
    fix i :: nat
    assume "i < n"
    then have "a ! i < b ! i" using assms(4) by simp
    then show "a ! i + c ! i < b ! i + c ! i" by simp
  qed
  thus ?thesis by simp
qed
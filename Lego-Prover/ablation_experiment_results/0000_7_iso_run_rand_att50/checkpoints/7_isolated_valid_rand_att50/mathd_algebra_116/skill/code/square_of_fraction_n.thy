lemma square_of_fraction_n:
  fixes a b :: real
  assumes "b > 0" "n > 0"
  shows "(a / b)^n = a^n / b^n"
proof -
  have "(a / b)^n = a^n / b^n" by (simp add: power_divide assms)
  then show ?thesis by simp
qed
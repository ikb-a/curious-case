lemma mod_exponentiation_multi:
  fixes x n a b :: nat
  assumes "n > 0" "x mod n = a" "b > 0"
  shows "(x^b) mod n = (a^b) mod n"
proof -
  have "(x^b) mod n = ((x mod n)^b) mod n" using assms by (metis power_mod)
  also have "... = (a^b) mod n" using assms(2) by auto
  finally show ?thesis by auto
qed
primrec mod_exponentiation_list :: "nat list \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "mod_exponentiation_list [] n b = 1" |
  "mod_exponentiation_list (x#xs) n b = (x^b) mod n * mod_exponentiation_list xs n b mod n"
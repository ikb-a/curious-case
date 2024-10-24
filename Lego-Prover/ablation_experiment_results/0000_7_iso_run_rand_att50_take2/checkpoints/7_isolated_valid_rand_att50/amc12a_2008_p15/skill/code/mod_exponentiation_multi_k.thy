lemma mod_exponentiation_multi_k:
  fixes x n a b k :: nat
  assumes "n > 0" "x mod n = a" "b > 0" "k > 0"
  shows "(x^(b*k)) mod n = (a^k)^b mod n"
proof -
  have "(x^(b*k)) mod n = ((x mod n)^(b*k)) mod n" using assms by (metis power_mod)
  also have "... = (a^(b*k)) mod n" using assms(2) by auto
  finally show ?thesis by (metis \<open>x ^ (b * k) mod n = (x mod n) ^ (b * k) mod n\<close> assms(2) mod_exp_def mult.commute mult_delta_right power_mult)
qed
primrec mod_exponentiation_list_k :: "nat list \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "mod_exponentiation_list_k [] n b k = 1" |
  "mod_exponentiation_list_k (x#xs) n b k = ((x^(b*k)) mod n * mod_exponentiation_list_k xs n b k) mod n"
lemma mod_exponentiation_multi_extended:
  fixes x n a b d :: nat
  assumes "n > 0" "x mod n = a" "b > 0" "d > 0"
  shows "(x^b) mod n = (a^b) mod n \<and> (x^d) mod n = (a^d) mod n"
proof -
  have "(x^b) mod n = ((x mod n)^b) mod n" using assms by (metis power_mod)
  also have "... = (a^b) mod n" using assms(2) by auto
  finally have "x^b mod n = a^b mod n" by auto
  have "(x^d) mod n = ((x mod n)^d) mod n" using assms by (metis power_mod)
  also have "... = (a^d) mod n" using assms(2) by auto
  finally have "x^d mod n = a^d mod n" by auto
  thus ?thesis by (metis \<open>x ^ b mod n = a ^ b mod n\<close>)
qed
primrec mod_exponentiation_list_extended :: "nat list \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "mod_exponentiation_list_extended [] n b = 1" |
  "mod_exponentiation_list_extended (x#xs) n b = ((x^b) mod n) * (mod_exponentiation_list_extended xs n b) mod n"
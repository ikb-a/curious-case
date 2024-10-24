lemma mod_exponentiation_multi_k_sum:
  fixes x y n a b k :: nat
  assumes "n > 0" "x mod n = a" "y mod n = b" "b > 0" "k > 0"
  shows "((x + y)^(b*k)) mod n = ((a + b)^k)^b mod n"
proof -
  have "((x + y)^(b*k)) mod n = (((x + y) mod n)^(b*k)) mod n" using assms by (metis power_mod)
  also have "... = ((a + b)^(b*k)) mod n" using assms(2, 3) by (smt (verit) mod_add_eq power_mod)
  finally show ?thesis by (metis \<open>((x + y) mod n) ^ (b * k) mod n = (a + b) ^ (b * k) mod n\<close> \<open>(x + y) ^ (b * k) mod n = ((x + y) mod n) ^ (b * k) mod n\<close> mult.commute power_mult)
qed
primrec mod_exponentiation_list_sum :: "nat list \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "mod_exponentiation_list_sum [] n b = 1" |
  "mod_exponentiation_list_sum (x#xs) n b = (((x^b) mod n + mod_exponentiation_list_sum xs n b) mod n)"
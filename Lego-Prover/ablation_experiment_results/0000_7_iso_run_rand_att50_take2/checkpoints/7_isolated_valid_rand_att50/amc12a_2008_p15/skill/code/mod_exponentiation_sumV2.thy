lemma mod_exponentiation_sum:
  fixes x y n b :: nat
  assumes "n > 0" "x mod n = a" "y mod n = b" "b > 0"
  shows "((x + y)^b) mod n = ((a + b)^b) mod n"
proof -
  have "((x + y)^b) mod n = (((x mod n) + (y mod n))^b) mod n" using assms by (smt (verit) mod_add_left_eq mod_add_right_eq power_mod)
  also have "... = ((a + b)^b) mod n" using assms(2) assms(3) by auto
  finally show ?thesis by auto
qed
primrec mod_exponentiation_list_sum :: "nat list \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "mod_exponentiation_list_sum [] n b = 1" |
  "mod_exponentiation_list_sum (x#xs) n b = ((x^b mod n) + (mod_exponentiation_list_sum xs n b)) mod n"
primrec mod_exponentiation_matrix_sum :: "nat list list \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "mod_exponentiation_matrix_sum [] n b = 1" |
  "mod_exponentiation_matrix_sum (row#rows) n b = 
     (mod_exponentiation_list_sum row n b + mod_exponentiation_matrix_sum rows n b) mod n"
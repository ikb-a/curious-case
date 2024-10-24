lemma mod4_cases_with_expressions:
  fixes a b :: int
  shows "a mod 4 = b mod 4 \<longleftrightarrow> (a - b) mod 4 = 0"
proof -
  {
    assume "a mod 4 = b mod 4"
    hence "(a - b) mod 4 = 0" 
      using mod_add_eq by presburger
  }
  moreover
  {
    assume "(a - b) mod 4 = 0"
    hence "a mod 4 = b mod 4" 
      using mod_diff_eq by presburger
  }
  ultimately show ?thesis by auto
qed
lemma mathd_algebra_109_multi:
  fixes a b :: "real list"
  assumes h0 : "\<forall>i. 3 * (a!i) + 2 * (b!i) = 12"
    and h1 : "\<forall>i. a!i = 4"
  shows "\<forall>i. b!i = 0"
proof -
  show ?thesis
  proof (rule allI)
    fix i
    have "3 * 4 + 2 * (b!i) = 12" using h1 by (metis add.commute h0 mult.commute mult_2_right numeral_Bit0 numeral_Bit1 one_add_one)
    have "12 + 2 * (b!i) = 12" by (smt (verit) \<open>3 * 4 + 2 * (b!i) = 12\<close>)
    have "2 * (b!i) = 0" using `12 + 2 * (b!i) = 12` by simp
    thus "b!i = 0" using `2 * (b!i) = 0` by simp
  qed
qed
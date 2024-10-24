lemma non_negative_powers:
  fixes x :: real and n :: nat
  assumes "n > 0"
  shows "x^n >= 0 \<longleftrightarrow> (x = 0 \<or> n mod 2 = 0 \<or> x > 0)"
proof -
  have "x^n = x * x^(n-1)" by (metis assms bot_nat_0.not_eq_extremum power_eq_if)
  then show "x^n >= 0 \<longleftrightarrow> (x = 0 \<or> n mod 2 = 0 \<or> x > 0)"
  proof (cases "x = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "x > 0 \<or> x < 0" by auto
    thus ?thesis
    proof (cases "x > 0")
      case True
      then have "x^n > 0" by auto
      then show ?thesis by (metis True pos2 realpow_pos_nth_unique zero_le_power2)
    next
      case False
      then have "x < 0" by (metis \<open>0 < x \<or> x < 0\<close>)
      have "n mod 2 = 1 \<Longrightarrow> x^n < 0" using power_strict_mono by (metis \<open>x < 0\<close> even_mod_2_iff odd_one power_less_zero_eq)
      thus ?thesis by (metis False \<open>0 < x \<or> x < 0\<close> even_iff_mod_2_eq_zero less_eq_real_def less_numeral_extra(3) mod_eq_0_iff_dvd not_mod_2_eq_0_eq_1 zero_le_even_power zero_le_odd_power zero_neq_one)
    qed
  qed
qed
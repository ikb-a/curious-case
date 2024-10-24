lemma substitute_congruence:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 6 = 3 \<longleftrightarrow> (2 * k + 5) mod 6 = 3"
proof -
  have "N mod 6 = (8 * k + 5) mod 6"
    using assms by simp
  also have "... = (8 * k mod 6 + 5 mod 6) mod 6"
    by presburger
  also have "... = (2 * k mod 6 + 5 mod 6) mod 6"
    by presburger
  also have "... = (2 * k + 5) mod 6"
    by presburger
  finally have "N mod 6 = (2 * k + 5) mod 6" .
  show "N mod 6 = 3 \<longleftrightarrow> (2 * k + 5) mod 6 = 3"
    using `N mod 6 = (2 * k + 5) mod 6` by auto
qed
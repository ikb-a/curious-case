lemma rearrange_congruence:
  fixes k :: nat
  assumes "2 * k + 5 mod 6 = 3"
  shows "2 * k mod 6 = 4"
proof -
  have "2 * k + 5 mod 6 = 3" using assms by simp
  then have "2 * k + 5 = 6 * n + 3" for n :: nat
    by auto
  then have "2 * k = 6 * n + 3 - 5" for n :: nat
    by simp
  hence "2 * k = 6 * n - 2" for n :: nat
    by simp
  thus "2 * k mod 6 = 4" 
    by presburger
qed
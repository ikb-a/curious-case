lemma linear_congruence:
  fixes a b c :: nat
  assumes "b > 0" "c < b"
  shows "\<exists>x. x mod b = c"
proof -
  have "c < b" by (simp add: assms(2))
  have "c + 0 * b = c" by simp
  then show ?thesis using assms by (metis mod_less)
qed
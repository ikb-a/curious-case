lemma linear_congruence:
  fixes a b c :: nat
  assumes "b > 0" "c < b"
  shows "\<exists>x. x mod b = c"
proof -
  let ?x = "c"
  have "0 \<le> c" using assms(2) by simp
  have "?x mod b = c" by (simp add: assms(2))
  then show "\<exists>x. x mod b = c" by (rule exI[of _ ?x])
qed
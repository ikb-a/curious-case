lemma linear_congruence:
  fixes a b c :: nat
  assumes "b > 0" "c < b"
  shows "\<exists>x. x mod b = c"
proof -
  let ?x = "c"
  have "c < b" using assms(2) by simp
  have "c mod b = c" using assms(1) by (metis assms(2) mod_less)
  show "\<exists>x. x mod b = c" by (metis \<open>c mod b = c\<close>)
qed
lemma linear_congruence:
  fixes a b c :: nat
  assumes "b > 0" "c < b"
  shows "\<exists>x. x mod b = c"
proof -
  have "c < b" by (simp add: assms(2))
  let ?x = "c"  
  have "c mod b = c" by (metis assms(2) mod_less)
  then show ?thesis using `c < b` by blast
qed
lemma linear_congruence:
  fixes a b c :: nat
  assumes "b > 0" "c < b"
  shows "\<exists>x. x mod b = c"
proof -
  let ?x = "c"  
  have "0 \<le> c" using assms(2) by auto
  have "c < b" using assms(2) by simp
  have "?x mod b = c mod b" by (simp add: mod_less)
  also have "... = c" by (metis assms(2) mod_less)
  finally have "?x mod b = c" by (metis \<open>c mod b = c\<close>)
  show ?thesis by (metis \<open>c mod b = c\<close>) 
qed
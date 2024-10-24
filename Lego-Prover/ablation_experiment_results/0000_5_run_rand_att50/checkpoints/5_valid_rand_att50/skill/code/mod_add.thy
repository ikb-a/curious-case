lemma mod_add:
  fixes a b c d :: nat
  assumes "a mod b = c" "d mod b = e"
  shows "(a + d) mod b = (c + e) mod b"
proof -
  have "a = c + b * (a div b)" using assms(1) by auto
  have "d = e + b * (d div b)" using assms(2) by auto
  then have "a + d = (c + b * (a div b)) + (e + b * (d div b))" 
    by (metis \<open>a = c + b * (a div b)\<close>)
  then have "a + d = (c + e) + b * ((a div b) + (d div b))" 
    by (simp add: algebra_simps)
  then have "(a + d) mod b = ((c + e) + b * ((a div b) + (d div b))) mod b" 
    by presburger
  also have "... = (c + e) mod b" 
    by auto
  finally show ?thesis by simp
qed
lemma mod_subtract:
  fixes a b m :: nat
  assumes "a mod m = b" "b < a" 
  shows "(a - b) mod m = 0"
proof -
  have "a = b + (a div m) * m" using assms(1) by auto
  then have "a - b = (a div m) * m" by (simp add: assms(2))
  then show ?thesis by auto
qed
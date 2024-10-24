lemma mod_10_add:
  fixes a b :: nat
  shows "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10"
proof -
  have "a = 10 * (a div 10) + (a mod 10)" and "b = 10 * (b div 10) + (b mod 10)"
    by auto
  then have "a + b = 10 * (a div 10 + b div 10) + (a mod 10 + b mod 10)" by simp
  then show ?thesis by (metis mod_add_eq)
qed
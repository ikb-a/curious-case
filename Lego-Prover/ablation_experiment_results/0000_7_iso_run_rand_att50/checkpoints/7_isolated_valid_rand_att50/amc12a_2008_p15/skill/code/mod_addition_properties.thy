lemma mod_addition_properties:
  fixes a b :: nat
  assumes "a < 100" "b < 100"
  shows "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10"
proof -
  have "a + b < 200" using assms by simp
  hence "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10" 
    by presburger
  thus ?thesis by simp
qed
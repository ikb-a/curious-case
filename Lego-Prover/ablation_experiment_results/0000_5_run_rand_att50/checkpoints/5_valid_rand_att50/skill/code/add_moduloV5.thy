lemma add_modulo:
  fixes a b :: nat
  shows "(a mod 10 + b mod 10) mod 10 = (a + b) mod 10"
proof -
  have "a mod 10 + b mod 10 < 20" 
    using mod_less by auto
  moreover have "(a + b) mod 10 < 10" 
    using mod_less by auto
  hence "(a mod 10 + b mod 10) mod 10 = (a + b) mod 10"
    by presburger
  ultimately show ?thesis by auto
qed
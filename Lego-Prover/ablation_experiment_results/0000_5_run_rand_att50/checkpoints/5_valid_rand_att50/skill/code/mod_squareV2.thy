lemma mod_square:
  fixes a :: nat and m :: nat
  shows "(a^2) mod m = ((a mod m)^2) mod m"
proof -
  have "(a^2) mod m = (a * a) mod m" by (metis power2_eq_square)
  also have "... = ((a mod m) * (a mod m)) mod m" 
    using mod_mult_eq by metis
  also have "... = (a mod m)^2 mod m" by (metis calculation power_mod)
  finally show ?thesis by simp
qed
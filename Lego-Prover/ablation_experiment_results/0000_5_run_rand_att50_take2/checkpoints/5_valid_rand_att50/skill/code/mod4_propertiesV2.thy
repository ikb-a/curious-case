lemma mod4_properties:
  fixes a b :: int
  shows "a mod 4 = b mod 4 \<Longrightarrow> (a - b) mod 4 = 0"
proof -
  assume "a mod 4 = b mod 4"
  then obtain k where "a = 4 * k + b mod 4" by (metis add.commute mod_eqE mod_mod_trivial)
  thus "(a - b) mod 4 = 0" by presburger
qed
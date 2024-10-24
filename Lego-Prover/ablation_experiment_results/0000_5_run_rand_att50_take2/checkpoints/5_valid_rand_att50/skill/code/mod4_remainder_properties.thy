lemma mod4_remainder_properties:
  fixes a b :: int
  shows "a mod 4 = b mod 4 \<Longrightarrow> (a - b) mod 4 = 0"
  by presburger
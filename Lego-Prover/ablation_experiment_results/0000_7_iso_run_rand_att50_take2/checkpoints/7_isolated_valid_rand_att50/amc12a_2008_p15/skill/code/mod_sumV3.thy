lemma mod_sum:
  fixes a b :: nat
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"
proof -
  have "a + b = (a mod c) + (b mod c) + c * (((a div c) + (b div c)))" by (auto simp: field_simps)
  then show ?thesis by auto
qed
lemma mod_addition:
  fixes a b c :: nat
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"
proof -
  have "a + b = (a mod c) + (b mod c) + (a div c + b div c) * c" 
    by (auto simp: field_simps)
  then show ?thesis by auto
qed
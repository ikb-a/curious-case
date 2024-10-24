lemma mod_properties:
  fixes a b c :: nat
  assumes "b > 0" "c > 0"
  shows "(a + b) mod c = (a mod c + b mod c) mod c"
proof -
  have "a + b = (a mod c) + (b mod c) + (a div c + b div c) * c"
    by (auto simp: field_simps)
  then have "(a + b) mod c = ((a mod c) + (b mod c) + (a div c + b div c) * c) mod c"
    by simp
  also have "... = ((a mod c) + (b mod c)) mod c"
    by auto
  finally show ?thesis by simp
qed
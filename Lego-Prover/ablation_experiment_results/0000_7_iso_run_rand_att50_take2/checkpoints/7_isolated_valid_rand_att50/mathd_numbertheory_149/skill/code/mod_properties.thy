lemma mod_properties:
  fixes a b c :: nat
  assumes "b > 0" "c > 0"
  shows "(a + b) mod c = (a mod c + b mod c) mod c"
proof -
  have "(a + b) mod c = (a mod c + (b + (a div c) * c)) mod c"
    by auto
  also have "... = (a mod c + b mod c) mod c"
    by (metis calculation mod_add_eq)
  finally show ?thesis by simp
qed
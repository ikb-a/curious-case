lemma mod_add:
  fixes a b c :: nat
  shows "(a + b) mod c = ((a mod c) + (b mod c)) mod c"
proof (cases "c = 0")
  case True
  then show ?thesis by simp
next
  case False
  then have "c > 0" by simp
  have "a + b = (a mod c) + (b mod c) + c * ((a div c) + (b div c))"
    by (auto simp: field_simps)
  then have "(a + b) mod c = (((a mod c) + (b mod c)) + c * ((a div c) + (b div c))) mod c"
    by simp
  also have "... = ((a mod c) + (b mod c)) mod c"
    using `c > 0` by (simp add: mod_add_left_eq)
  finally show ?thesis by simp
qed
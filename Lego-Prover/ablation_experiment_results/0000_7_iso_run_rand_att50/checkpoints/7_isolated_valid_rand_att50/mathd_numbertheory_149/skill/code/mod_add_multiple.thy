lemma mod_add_multiple:
  fixes x n a b :: nat
  assumes "n > 0" "x mod n = a" "b \<ge> 0"
  shows "((x + b) mod n) = ((a + b) mod n)"
proof -
  have "((x + b) mod n) = ((x mod n + b) mod n)"
    by (metis mod_add_left_eq)
  also have "... = ((a + b) mod n)"
    using assms by auto
  finally show ?thesis by simp
qed
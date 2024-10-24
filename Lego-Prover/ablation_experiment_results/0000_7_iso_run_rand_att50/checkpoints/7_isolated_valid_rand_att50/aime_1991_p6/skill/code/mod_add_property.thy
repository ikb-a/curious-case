lemma mod_add_property:
  fixes x n a b :: nat
  assumes "n > 0" "x mod n = a" "b mod n = b"
  shows "(x + b) mod n = (a + b) mod n"
proof -
  have "x mod n + b mod n = a + b" using assms(2) assms(3) by simp
  then show ?thesis using assms(1) by (metis add.commute assms(2) assms(3) mod_add_cong mod_add_right_eq mod_mod_trivial)
qed
lemma odd_even_product:
  fixes a b :: nat
  assumes "odd a" and "even b"
  shows "even (a * b)"
proof -
  from assms(2) obtain n where "b = 2 * n" by auto
  then have "a * b = a * (2 * n)" by (simp add: `b = 2 * n`)
  thus "even (a * b)" by auto
qed
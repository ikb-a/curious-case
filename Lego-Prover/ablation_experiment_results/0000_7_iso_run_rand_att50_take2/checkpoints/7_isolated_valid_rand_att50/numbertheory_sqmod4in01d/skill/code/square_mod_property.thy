lemma square_mod_property:
  fixes a :: int
  shows "(a mod n)^2 mod n = (a^2 mod n)"
proof -
  obtain b::int where c0: "b = a mod n" by auto
  then have "b = a - n * (a div n)" by (auto simp: field_simps)
  hence "a^2 = (b + n * (a div n))^2" by (simp add: algebra_simps)
  also have "... = b^2 + 2 * b * (n * (a div n)) + (n * (a div n))^2" by (smt (verit) power2_sum)
  also have "... mod n = b^2 mod n" by (smt (verit) \<open>(b + n * (a div n))\<^sup>2 = b\<^sup>2 + 2 * b * (n * (a div n)) + (n * (a div n))\<^sup>2\<close> \<open>a\<^sup>2 = (b + n * (a div n))\<^sup>2\<close> c0 power_mod)
  finally show ?thesis using c0 by auto
qed
lemma linear_substitution:
  fixes a b :: complex
  assumes h0: "a + b = c"
  shows "b = c - a"
proof -
  have "b = c - a" using h0 by (simp add: field_simps)
  then show ?thesis by simp
qed
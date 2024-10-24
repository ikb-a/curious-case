lemma inequality_multiplication:
  fixes a b :: real
  assumes h0: "0 < b"
    and h1: "a < c"
  shows "a * b < c * b"
proof -
  have "a * b < c * b" using h1 h0 by (simp add: field_simps)
  thus ?thesis by simp
qed
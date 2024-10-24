lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" and "c mod n = d" and "coprime m n"
  shows "∃x. x mod (m*n) = b + k*m ∧ k ∈ {0..n-1}"
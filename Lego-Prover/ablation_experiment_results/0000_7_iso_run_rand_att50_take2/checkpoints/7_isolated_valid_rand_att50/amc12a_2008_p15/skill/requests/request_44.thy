lemma compute_k:
  fixes k :: nat
  assumes h0: "k = 2008^2 + 2^2008"
  shows "k mod 10 = (4 + 6) mod 10"
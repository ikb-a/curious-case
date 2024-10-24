lemma consecutive_integers_parity:
  fixes n :: nat
  assumes "n > 0"
  shows "(n - 1) mod 2 \<noteq> (n - 2) mod 2"
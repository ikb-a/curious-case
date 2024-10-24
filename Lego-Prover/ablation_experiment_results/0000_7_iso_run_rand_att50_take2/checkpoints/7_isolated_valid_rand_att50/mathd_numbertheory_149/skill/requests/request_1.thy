lemma express_congruence:
  fixes n :: nat
  assumes "n mod m = a"
  shows "n = m * k + a" for some integer k
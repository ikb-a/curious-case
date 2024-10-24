lemma simplify_fraction:
  fixes m n :: nat
  assumes "gcd(m, n) = 1"
  shows "m / n = (m div gcd(m, n)) / (n div gcd(m, n))"
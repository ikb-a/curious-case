lemma trivial_inequality:
  fixes x :: real
  shows "x^2 >= 0"
proof -
  have "x^2 = x * x" by sos
  then show ?thesis 
    by auto
qed
theorem amc12a_2013_p8_simpler:
  fixes x y :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "x = y"
  shows "x * y = x^2"
proof -
  have "x * y = x^2" using h2 by sos
  thus ?thesis by simp
qed
lemma expanded_form_with_two_variables:
  fixes x y z :: real
  shows "(x + y + z)^2 = x^2 + y^2 + z^2 + 2*(x*y + y*z + x*z)"
proof -
  have "x + y + z = (x + y) + z" by simp
  then have "(x + y + z)^2 = ((x + y) + z)^2" by simp
  also have "... = (x + y)^2 + 2*(x + y)*z + z^2" by sos
  also have "... = (x^2 + 2*x*y + y^2) + 2*(x + y)*z + z^2" by sos
  also have "... = x^2 + y^2 + z^2 + 2*x*y + 2*z*(x + y)" by auto
  finally show ?thesis by sos
qed
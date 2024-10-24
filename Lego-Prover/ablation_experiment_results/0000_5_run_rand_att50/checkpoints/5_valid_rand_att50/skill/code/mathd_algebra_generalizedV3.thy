theorem mathd_algebra_generalized:
  fixes a b c :: real
  assumes h0 : "c * a + b = d"  
    and h1 : "a = e"            
  shows "b = d - c * e"         
proof -
  have eq: "c * a + b = d" using h0 by simp
  have "c * e + b = d" using h1 eq by simp
  have "b = d - c * e" using `c * e + b = d` by simp
  show ?thesis by (metis \<open>b = d - c * e\<close>)
qed
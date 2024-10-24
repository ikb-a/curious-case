theorem amc12a_2013_p8_generalized:
  fixes x y z :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "z\<noteq>0"
    and h3 : "x\<noteq>y" and h4: "x\<noteq>z" and h5: "y\<noteq>z"
    and h6 : "x + 2/x = y + 2/y"
    and h7 : "x + 2/x = z + 2/z"
  shows "x * y = 2 \<and> x * z = 2 \<and> y * z = 2"
proof -
  have "x + 2/x = y + 2/y" using h6 by simp
  have "x + 2/x = z + 2/z" using h7 by simp
  have rearranged_y: "x - y = (2/y - 2/x)" by (smt (verit) h6)
  have rearranged_z: "x - z = (2/z - 2/x)" by (smt (verit) h7)
  have cross_mult_y: "(x - y) * x * y = 2 * (x - y)"
    using rearranged_y by sos
  have cross_mult_z: "(x - z) * x * z = 2 * (x - z)"
    using rearranged_z by sos
  have "x * y = 2" using h2 cross_mult_y by (metis amc12a_2013_p8_evolved h0 h1 h3 h6)
  have "x * z = 2" using h0 cross_mult_z by (metis amc12a_2013_p8_evolved h2 h4 h7)
  then show "x * y = 2 \<and> x * z = 2 \<and> y * z = 2" 
    using h1 h2 h5 by (metis \<open>x * y = 2\<close> amc12a_2013_p8_evolved h6 h7)
qed
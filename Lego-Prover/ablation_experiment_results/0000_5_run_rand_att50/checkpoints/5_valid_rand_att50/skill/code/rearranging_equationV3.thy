lemma rearranging_equation:
  fixes a b c :: real
  shows "b = a - c \<longleftrightarrow> a = b + c"
proof -
  {
    assume h1: "b = a - c"
    have "a = b + c" using h1 by simp
  }
  moreover
  {
    assume h2: "a = b + c"
    have "b = a - c" using h2 by simp
  }
  ultimately show ?thesis by blast
qed
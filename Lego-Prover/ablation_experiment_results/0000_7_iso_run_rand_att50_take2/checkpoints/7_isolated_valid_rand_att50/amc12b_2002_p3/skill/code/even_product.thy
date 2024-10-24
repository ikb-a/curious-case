lemma even_product:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "(a mod 2 = 0) \<or> (b mod 2 = 0) \<Longrightarrow> (a * b mod 2 = 0)"
proof -
  assume "a mod 2 = 0 \<or> b mod 2 = 0"
  have "a mod 2 = 0 \<Longrightarrow> a * b mod 2 = 0" 
  proof -
    assume "a mod 2 = 0"
    then obtain k where "a = 2 * k" by auto 
    have "a * b = (2 * k) * b" by (metis `a = 2 * k`)
    thus "a * b mod 2 = 0" by auto
  qed
  moreover have "b mod 2 = 0 \<Longrightarrow> a * b mod 2 = 0"
  proof -
    assume "b mod 2 = 0"
    then obtain m where "b = 2 * m" by auto
    have "a * b = a * (2 * m)" by (metis `b = 2 * m`)
    thus "a * b mod 2 = 0" by auto
  qed
  ultimately show "a * b mod 2 = 0" using `a mod 2 = 0 \<or> b mod 2 = 0` by (metis)
qed
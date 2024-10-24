lemma bounds_on_n:
  fixes n :: nat and m :: nat
  assumes "n < m"
  shows "n \<in> {x::nat. x < m}"
proof -
  have "n < m" using assms by simp
  hence "n \<in> {x :: nat. x < m}" 
    by auto     
  thus ?thesis by simp
qed
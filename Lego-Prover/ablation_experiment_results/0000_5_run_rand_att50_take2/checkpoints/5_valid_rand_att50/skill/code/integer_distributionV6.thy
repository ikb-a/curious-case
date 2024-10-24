lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n" "x \<ge> 0" "y \<ge> 0"
  shows "x \<le> n \<and> y \<le> n"
proof -
  have "x \<le> n" using assms
  proof -
    have "x + y = n" using assms(1) by simp
    also have "y \<ge> 0" using assms(3) by simp
    ultimately show ?thesis 
      by auto
  qed
  have "y \<le> n" using assms
  proof -
    have "x + y = n" using assms(1) by simp
    also have "x \<ge> 0" using assms(2) by simp
    ultimately show ?thesis 
      by auto
  qed
  thus "x \<le> n \<and> y \<le> n" by (metis \<open>x \<le> n\<close>)
qed
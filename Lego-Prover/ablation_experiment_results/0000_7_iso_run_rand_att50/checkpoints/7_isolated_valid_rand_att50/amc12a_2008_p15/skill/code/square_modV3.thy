lemma square_mod:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 10 = 0"
proof -
  have "k = 10 * (k div 10)" using assms(1) by auto
  then show ?thesis
  proof -
    have "k^2 = (10 * (k div 10))^2" by (metis \<open>k = 10 * (k div 10)\<close>)
    also have "... = 100 * (k div 10)^2" by (simp add: power2_eq_square)
    finally have "k^2 mod 10 = (100 * (k div 10)^2) mod 10" by simp
    also have "... = 0" by auto
    finally show ?thesis by simp
  qed
qed
lemma mod_simplification_multiple:
  fixes x y z a b :: nat
  assumes "y > 0" "z > 0"
  shows "\<exists>k1 k2. x = k1 * y + (x mod y) \<and> x = k2 * z + (x mod z)"
proof -
  obtain k1 where "x = k1 * y + (x mod y)" 
    using mod_simplification_generalized[OF assms(1)] by auto
  obtain k2 where "x = k2 * z + (x mod z)" 
    using mod_simplification_generalized[OF assms(2)] by auto
  thus ?thesis by (metis \<open>\<And>thesis. (\<And>k1. x = k1 * y + x mod y \<Longrightarrow> thesis) \<Longrightarrow> thesis\<close> \<open>\<And>thesis. (\<And>k2. x = k2 * z + x mod z \<Longrightarrow> thesis) \<Longrightarrow> thesis\<close>)
qed
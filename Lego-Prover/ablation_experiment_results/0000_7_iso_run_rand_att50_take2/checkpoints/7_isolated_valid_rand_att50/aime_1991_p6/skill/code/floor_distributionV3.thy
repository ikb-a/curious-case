lemma floor_distribution:
  fixes n :: nat
  assumes "n = floor r" "n + 1 = floor (r + 1)"
  shows "n + 1 - n = 1"
proof -
  have "n + 1 - n = 1" 
    by (simp add: algebra_simps)  
  thus ?thesis
    by simp
qed
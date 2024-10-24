lemma find_modular_solutions:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<exists>k. x = a + n * k) \<longleftrightarrow> (x mod n = a mod n)"
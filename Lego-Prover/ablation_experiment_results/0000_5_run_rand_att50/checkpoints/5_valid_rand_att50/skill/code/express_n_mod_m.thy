lemma express_N_mod_m:
  fixes N :: nat and k :: nat and m :: nat
  assumes "N = (n * m) + r" 
      and "0 \<le> r" and "r < m"
  shows "N mod m = r"
proof -
  have "N mod m = ((n * m) + r) mod m" using assms by simp
  also have "... = (n * m mod m + r mod m)" by auto
  also have "... = (0 + r) mod m" by auto
  also have "... = r" by (metis add_cancel_right_left assms(3) mod_less)
  finally show "N mod m = r" by simp
qed
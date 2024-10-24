lemma divisibility_properties:
  fixes a b m :: nat
  assumes "a mod m = b" "b < m"
  shows "\<exists>k. a = k * m + b"
proof -
  from assms(1) have "a mod m = b" by simp
  then have "a = m * (a div m) + (a mod m)"
    by auto
  moreover have "a mod m = b" by (simp add: assms(1))
  hence "a = m * (a div m) + b" by auto
  ultimately show "\<exists>k. a = k * m + b" 
    by (auto simp: field_simps)
qed
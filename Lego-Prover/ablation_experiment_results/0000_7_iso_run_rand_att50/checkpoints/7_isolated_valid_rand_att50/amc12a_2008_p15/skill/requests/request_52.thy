lemma power_cycle:
  fixes a :: nat and n :: nat
  assumes "n > 0"
  shows "(\<forall>k. a^k mod n = a^(k mod m) mod n) \<longrightarrow> (a^k mod n) = (a^(k mod m) mod n)"
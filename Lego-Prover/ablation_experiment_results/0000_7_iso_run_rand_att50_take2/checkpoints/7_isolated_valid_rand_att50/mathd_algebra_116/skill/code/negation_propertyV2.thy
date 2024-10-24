lemma negation_property:
  fixes x :: real
  shows "-a * x = - (a * x)"
proof -
  have "- a * x = - (a * x)" by simp
  show ?thesis by simp
qed
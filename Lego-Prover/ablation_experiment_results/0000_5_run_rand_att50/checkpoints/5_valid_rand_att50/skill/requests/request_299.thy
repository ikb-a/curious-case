lemma real_limit_properties:
  fixes a b :: real
  assumes "a = b"
  shows "filterlim a at_top (nhds c) \<longleftrightarrow> filterlim b at_top (nhds c)"
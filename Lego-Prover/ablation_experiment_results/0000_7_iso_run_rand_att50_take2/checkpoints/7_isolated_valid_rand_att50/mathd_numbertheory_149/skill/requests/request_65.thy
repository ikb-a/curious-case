lemma residue_properties:
  fixes a b m :: nat
  shows "a mod m = b \<longleftrightarrow> a = k * m + b \<text{ for some } k :: int"
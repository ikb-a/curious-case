definition function_composition :: "('b \<Rightarrow> 'c) \<Rightarrow> ('a \<Rightarrow> 'b) \<Rightarrow> 'a \<Rightarrow> 'c" (infixr "\<circ>\<^sub>f" 55) where
"function_composition g f x = g (f x)"
primrec function_composition_multi :: "('a \<Rightarrow> 'a) list \<Rightarrow> 'a \<Rightarrow> 'a" (infixr "\<circ>\<^sub>f\<^sub>m\<^sub>u\<^sub>l\<^sub>t\<^sub>i" 55) where
"function_composition_multi [] x = x" |
"function_composition_multi (f#fs) x = f (function_composition_multi fs x)"
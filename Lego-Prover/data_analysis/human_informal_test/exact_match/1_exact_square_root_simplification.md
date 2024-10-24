# square_root_simplification

Tasks where a provided skill is reproduced verbatim

Frequency: 1

Lemma:
```isabelle
lemma square_root_simplification:
  fixes a b :: real
  assumes "0 < a \<and> 0 < b"
  shows "(sqrt a + sqrt b)^2 = a + 2 * sqrt (a * b) + b"
proof -
  have "(sqrt a + sqrt b)^2 = (sqrt a)^2 + 2 * (sqrt a) * (sqrt b) + (sqrt b)^2"
    by (simp add: power2_eq_square algebra_simps)
  also have "... = a + 2 * sqrt (a * b) + b"
    using assms by (simp add: power2_eq_square real_sqrt_mult)
  finally show ?thesis by simp
qed
```


## Usage 1 of 1:
### Problem:
Task name: `amc12b_2020_p13.json`

Which of the following is the value of $\sqrt{\log_2{6}+\log_3{6}}?$  $\textbf{(A) } 1 \qquad\textbf{(B) } \sqrt{\log_5{6}} \qquad\textbf{(C) } 2 \qquad\textbf{(D) } \sqrt{\log_2{3}}+\sqrt{\log_3{2}} \qquad\textbf{(E) } \sqrt{\log_2{6}}+\sqrt{\log_3{6}}$ Show that it is \textbf{(D) } \sqrt{\log_2{3}}+\sqrt{\log_3{2}}.
### Informal Proof:
Recall that: <ol style="margin-left: 1.5em;">   <li>$\log_b{(uv)}=\log_b u + \log_b v.$</li><p>   <li>$\log_b u\cdot\log_u b=1.$</li><p> </ol> We use these properties of logarithms to rewrite the original expression: $\begin{align*} \sqrt{\log_2{6}+\log_3{6}}&=\sqrt{(\log_2{2}+\log_2{3})+(\log_3{2}+\log_3{3})} \\ &=\sqrt{2+\log_2{3}+\log_3{2}} \\ &=\sqrt{\left(\sqrt{\log_2{3}}+\sqrt{\log_3{2}}\right)^2} \\ &=\textbf{(D) } \sqrt{\log_2{3}}+\sqrt{\log_3{2}}. \end{align*}$
### Solution:
```isabelle
theorem amc12b_2020_p13 :
  shows "sqrt (ln 6 / ln 2 + ln 6 / ln 3)  
    = sqrt (ln 3 / ln 2) + sqrt (ln 2 / ln 3)"
```
AI Generated completion (lemma lines higlighted):
```isabelle
theory amc12b_2020_p13
  imports Complex_Main
begin

(* useful skill 1 *)
lemma logarithm_properties:
  fixes b u v :: real
  assumes "b > 0" and "u > 0" and "v > 0"
  shows "log b (u * v) = log b u + log b v"
  using assms by (metis add_cancel_right_right div_by_0 ln_one log_def log_mult)

(* useful skill 3 *)
lemma square_root_simplification: %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  fixes a b :: real
  assumes "0 < a \<and> 0 < b"
  shows "(sqrt a + sqrt b)^2 = a + 2 * sqrt (a * b) + b"
proof -
  have "(sqrt a + sqrt b)^2 = (sqrt a)^2 + 2 * (sqrt a) * (sqrt b) + (sqrt b)^2"
    by (simp add: power2_eq_square algebra_simps)
  also have "... = a + 2 * sqrt (a * b) + b"
    using assms by (simp add: power2_eq_square real_sqrt_mult)
  finally show ?thesis by simp
qed

(* formal statement copy from the input *)
theorem amc12b_2020_p13 :
  shows "sqrt (ln 6 / ln 2 + ln 6 / ln 3)  
    = sqrt (ln 3 / ln 2) + sqrt (ln 2 / ln 3)"
proof -
  (* Step 1: Recall the properties of logarithms: $\log_b{(uv)}=\log_b u + \log_b v$ and $\log_b u \cdot \log_u b = 1$. *)
  have log_props: "log 2 6 = log 2 2 + log 2 3" "log 3 6 = log 3 2 + log 3 3"
    using logarithm_properties[of 2 2 3] logarithm_properties[of 3 2 3] by simp_all

  (* Step 2: Use the properties of logarithms to rewrite the original expression as $\sqrt{(\log_2{2}+\log_2{3})+(\log_3{2}+\log_3{3})}$. *)
  have expr_eq: "sqrt (ln 6 / ln 2 + ln 6 / ln 3) = sqrt (ln 2 / ln 2 + ln 3 / ln 2 + ln 2 / ln 3 + ln 3 / ln 3)"
    by (simp add: log_props)
  
  (* Step 3: Simplify the expression to $\sqrt{2+\log_2{3}+\log_3{2}}$. *)
  have expr_simp: "sqrt (ln 2 / ln 2 + ln 3 / ln 2 + ln 2 / ln 3 + ln 3 / ln 3) = sqrt (2 + ln 2 / ln 3 + ln 3 / ln 2)"
    by simp

  (* Step 4: Rewrite the expression as $\sqrt{\left(\sqrt{\log_2{3}}+\sqrt{\log_3{2}}\right)^2}$. *)
  have expr_rewrite: "sqrt (2 + ln 2 / ln 3 + ln 3 / ln 2) = sqrt ((sqrt (ln 2 / ln 3) + sqrt (ln 3 / ln 2))^2)"
    by simp

  (* Step 5: Apply the square root property to conclude that the expression is equal to $\sqrt{\log_2{3}}+\sqrt{\log_3{2}}$. *)
  have expr_final: "sqrt ((sqrt (ln 2 / ln 3) + sqrt (ln 3 / ln 2))^2) = sqrt (ln 2 / ln 3) + sqrt (ln 3 / ln 2)"
    by simp

  (* Combine all the steps *)
  from expr_eq expr_simp expr_rewrite expr_final show ?thesis
    by simp
qed

end
```

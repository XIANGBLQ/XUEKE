+++
title = "Abstract Algebra Learning Log - Preliminaries"
date = 2019-12-10
+++

> Recently, I have been working on *Abstract Algebra* which has derived category theory and exposes its strong relation with computer science.

# Brief Introduction

All these learning logs will be based on one online and free textbook (2019 Version), naming [*Abstract Algebra*](http://abstract.ups.edu/) which is licensed under the GNU FDL.

This learning log is basically in two parts, one is my own understandings or complementions to some of the parts, another part is my own answers to part of the *Exercises* section in the end of the chapter. And succeeding learning logs will mainly based on this form too.

First part may contain works in the textbook itself, therefore, this series of posts is licensed under the GNU FDL either.

# Understandings and complementions to textbook {#Example}

## Page 6, Proof of De Mogran\'s Laws

1. {{ katex(body="(A\cup{}B)'=A'\cap{}B'") }}
We define two statements, {{ katex(body="p") }} and {{ katex(body="q") }}, representing {{ katex(body="x\in{}A") }} and {{ katex(body="x\in{}B") }} respectively.
statement {{ katex(body="x\in{}(A\cup{}B)'\Leftrightarrow{}\neg{}(p\lor{}q)\Leftrightarrow{}(\neg{}p\land{}\neg{}q)\Leftrightarrow{}x\in{}(A'\cup{}B')") }}. (The relation between {{ katex(body="\neg{}(p\lor{}q)") }} and {{ katex(body="(\neg{}p\land{}\neg{}q)") }} can be deduced by simply enumerating through all the possible values of {{ katex(body="p") }} and {{ katex(body="q") }}, e.g. {{ katex(body="true") }} or {{ katex(body="false") }} for statements).
Thus, {{ katex(body="\forall{}x\in{}(A\cup{}B)'\rArr{}x\in{}(A'\cap{}B')\rArr{}(A\cup{}B)'\supset{}A'\cap{}B'") }}. Conversely, we can prove {{ katex(body="(A\cup{}B)'\subset{}A'\cap{}B'") }}.
Therefore, {{ katex(body="(A\cup{}B)'=A'\cap{}B'") }}. {{ katex(body="\square{}") }}
2. {{ katex(body="(A\cap{}B)'=A'\cup{}B'") }}
Similarly, we can deduce it by using proposition logic. {{ katex(body="\square{}") }}

{{ katex(body="\blacksquare{}") }}

## Page 12, Proof of implications between partition and relation

### Theorem
Given an equivalence relation {{ katex(body="\thicksim{}") }} on a set {{ katex(body="X") }}, the equivalence classes of {{ katex(body="X") }} form a partition of {{ katex(body="X") }}, then there is an equivalence relation on {{ katex(body="X") }} with equivalence classes {{ katex(body="X") }}. Conversely, if {{ katex(body="\mathcal{P}=\{x_{i}\}") }} partition of a set {{ katex(body="X") }}, then there is an equivalence relation on {{ katex(body="X") }} with equivalence classes {{ katex(body="X_{i}") }}.

### Proof
By using the reflective property, we have {{ katex(body="\forall{}x\in{}X, x\thicksim{}x") }}. Thus, {{ katex(body="x\thicksim{}[x]") }} by the definition of the equivalence class. Therefore, the {{ katex(body="[x] \not= \empty") }}.

Thus, {{ katex(body="\bigcup_{x\in{}X}[x]") }}.

Now, we should show {{ katex(body="\forall{}x,y\in{}X") }}, either {{ katex(body="[x]\cap{}[y]=\empty{}") }} or {{ katex(body="[x]=[y]") }}.

Suppose {{ katex(body="[x]\cap{}[y]\not = \empty") }}, Then, {{ katex(body="\forall{}c\in{}[y], c\thicksim{}y") }}.

{% katex(block=true) %}\begin{aligned}
\because{}&x\thicksim{}y\\
\therefore{}&y\thicksim{}x\\
\therefore{}&c\thicksim{}x\\
\therefore{}&c\in{}[x]\\
\therefore{}&[y]\subset{}[x]\\
\end{aligned}{% end %}

Conversely, we can also show {{ katex(body="[x]\subset{}[y]") }} in the same way. Thus, the {{ katex(body="[x]") }} and {{ katex(body="[y]") }} are either disjoint or completely the same. {{ katex(body="\square") }}

Now we need to show that given a partion on {{ katex(body="X") }}, we can construct a relation {{ katex(body="\thicksim") }} on {{ katex(body="X") }} such that partion {{ katex(body="\mathcal{P}") }} is the equivalence classes of {{ katex(body="\thicksim{}") }}.

Suppose we have a relation {{ katex(body="\thicksim") }}. We define {{ katex(body="x\thicksim{}y\Leftrightarrow{}x\ and\ y\ are\ in\ the\ same\ part\ x_{i}\ of\ partition\ \mathcal{P}") }}. So we should show that the relation is equivalent.

1. Reflectivity
since {{ katex(body="\forall{}x\in{}X") }}, {{ katex(body="x") }} will be in the same {{ katex(body="x_{i}") }} as itself does, so it is trivial to prove.

2. Symmetry
{{ katex(body="x\thicksim{}y\Leftrightarrow{}x\ and\ y\ are\ in\ the\ same\ part\ x_{i}\ of\ partition\ \mathcal{P}\Leftrightarrow{}y\thicksim{}x") }}, since the order doesn\'t matter.

3. Transitivity
If {{ katex(body="x\thicksim{}y") }}, then {{ katex(body="x") }} and {{ katex(body="y") }} are in the same part. If {{ katex(body="y\thicksim{}z") }}, than {{ katex(body="z") }} and {{ katex(body="y") }} are in the same part. Thus {{ katex(body="x") }} and {{ katex(body="z") }} are in the same part, which is {{ katex(body="x\thicksim{}z") }}.

Thus relation {{ katex(body="\thicksim{}") }} is equivalence relation. Since no element can be both in two parts, {{ katex(body="[x]\cap{}[y]=\empty") }} where {{ katex(body="x,y\in{}X") }}.

Now we need to prove the set of equivalence classes is the same as partition {{ katex(body="\mathcal{P}") }}.

If there is {{ katex(body="[x]\not = x_{i}") }} where {{ katex(body="x\in{}x_{i}") }}, then there must be some {{ katex(body="y\in{}x_{i}") }} in other equivalence class or {{ katex(body="y\in{}[x]") }} in other part of {{ katex(body="\mathcal{P}") }}. Both of which above have contradicted the definition of {{ katex(body="\thicksim{}") }}. And the {{ katex(body="\mathcal{P}") }} will be the same as the set of equivalence classes. {{ katex(body="\square") }}

{{ katex(body="\blacksquare") }}

# My Answers to part of *Exercises* section {{ katex(body="1.3") }}.
*Disclaimer: this part is my own work to the section, thus no guarantees is provided in terms of correctness. You may use it neither as instruction or correct answer*

## General solution to problems {{ katex(body="4\thicksim{}16") }} except {{ katex(body="8") }} and {{ katex(body="12") }}
All the proof-based problems involving the equality of operation of set theory (limited to union and intersect only) can be proved by transforming both sides into statements and enumerating through all the possible values of single statements, which construct the left-hand-side or right-hand-side statement, to show that set on each side is a subset of the other. For example, [Proof of De Morgan\'s laws](#Example).

## Problem 12

{% katex(block=true) %}\begin{aligned}
  (A\cup{}B)\times{}C&=\{(a,b):a\in{}(A\cup{}B),\ b\in{}C\}\\
  &=\{(a,b):a\in{}A\ or\ a\in{}B,\ b\in{}C\}\\
  &=\{(a,b):a\in{}A,\ b\in{}C\}\cup{}\{(a,b):a\in{}B,\ b\in{}C\}\\
  &=(A\times{}C)\cup{}(B\times{}C)\\
\end{aligned}{% end %}

{{ katex(body="\blacksquare") }}

## Problem 17

In order to let {{ katex(body="f") }} be a mapping which is well-defined, we need to make sure that {{ katex(body="f(\frac{kp}{kq})=f(\frac{p}{q})") }} where {{ katex(body="k\in{}\Z") }} and {{ katex(body="k\not = 0") }}.

1. Only if {{ katex(body="kp=q") }} implies the above implication. Thus it isn\'t a mapping
2. It is a mapping since it fulfills the requirement above.
3. Only if {{ katex(body="p=q") }} or {{ katex(body="k=1") }}. Not a mapping.
4. It is a mapping.

## Problem 22

*(d)* We have to show that {{ katex(body="g(a)=g(b)\rArr{}a=b") }} in order to prove that {{ katex(body="g") }} is one-to-one. Suppose {{ katex(body="g(a)=g(b)") }}. Since {{ katex(body="f") }} is onto, there exists such {{ katex(body="a") }} and {{ katex(body="b") }} that {{ katex(body="a=f(\alpha{})") }} and {{ katex(body="b=f(\beta{})") }}. So {{ katex(body="g(a)=g(b)") }} can be written as {{ katex(body="g(f(\alpha))=g(f(\beta))") }}. Given {{ katex(body="g\circ{}f") }} is one-to-one, we know that {{ katex(body="\alpha{}=\beta{}") }}. Thus {{ katex(body="a=f(\alpha{})=f(\beta{})=b") }}, resulting in {{ katex(body="g(a)=g(b)\rArr{}a=b") }}.

{{ katex(body="\blacksquare{}") }}

*(e)*
{% katex(block=true) %}\begin{aligned}
\forall{}&b\in{}B,g(b)\in{}C\\
\because{}&(g\circ{}f)\ is\ onto\\
\therefore{}&\exist{}a:g(b)=(g\circ{}f)(a)=g(f(a))\\
\because{}&g\ is\ one\text{-}to\text{-}one\\
\therefore{}&\forall{}b\in{}B,b=f(a)
\end{aligned}{% end %}
 {{ katex(body="\blacksquare{}") }}

## Problem 28

Suppose there is a element {{ katex(body="z\in{}X") }} such that {{ katex(body="z") }} is not related to anything. Then transitivity and symmetry hold but reflective holds since we need to have {{ katex(body="(x,x)\in{}R,\forall{}x\in{}X") }}.

{{ katex(body="\blacksquare") }}

Other parts I find not worth sharing or taking notes.

{{ katex(body="24.(b),\ 24.(c),\ 24.(d),\ 24.(e)") }} remain unsolved.

# References

I would prefer a quick and informal one rather than a formal one.
1. [*Abstract Algebra*](http://abstract.ups.edu/)
2. [Equivalence Class Question - Reddit](https://www.reddit.com/r/cheatatmathhomework/comments/3ymxjp/equivalence_class_question_abstract_algebra/)

# Special thanks

My math teacher.

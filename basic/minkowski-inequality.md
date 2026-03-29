**Minkowski の不等式** (有限版)

$p \geq 1$ とし $a_i, b_i \in \mathbb{R}, i=1,...,n$ とする．このとき
$$
\left(\sum_{i=1}^n |a_i + b_i|^p\right)^{1/p} \leq
\left(\sum_{i=1}^n |a_i|^p\right)^{1/p} +
\left(\sum_{i=1}^n |b_i|^p\right)^{1/p}
$$
が成り立つ．

---

証明：

(i) $p=1$ の場合を示す．
示すべき不等式は
$$
\sum_{i=1}^n |a_i + b_i| \leq
\sum_{i=1}^n |a_i| + \sum_{i=1}^n |b_i|
$$
である．
三角不等式より各 $i$ について $|a_i + b_i| \leq |a_i| + |b_i|$ が成り立つ．$i=1,...,n$ に渡って和をとれば示すべき不等式となる．

(ii) すべての $i=1,...,n$ に対して $a_i = -b_i$ である場合を示す．
この場合，各 $i$ に対して $|a_i + b_i| = 0$ であるから，示すべき不等式の左辺は $0$ となり不等式は自明に成り立つ．

(iii) $p>1$ であり，少なくとも１つの $i \in \{1,...,n\}$ に対して $a_i \neq -b_i$ である場合を示す．
各 $i$ について三角不等式 $|a_i + b_i| \leq |a_i| + |b_i|$ より
$$
\begin{align*}
\sum_{i=1}^n |a_i + b_i|^p & =
\sum_{i=1}^n |a_i + b_i|^{p-1} |a_i + b_i| \\ & \leq
\sum_{i=1}^n |a_i + b_i|^{p-1} |a_i| + \sum_{i=1}^n |a_i + b_i|^{p-1} |b_i| 
\end{align*}
$$
が成り立つ．$p>1$ より $1/p + 1/q = 1$ となる $q > 1$ を取ることができ，[Hölder の不等式](holder-inequality.md)より
$$
\sum_{i=1}^n |a_i + b_i|^{p-1} |a_i| \leq
\left(\sum_{i=1}^n |a_i + b_i|^{(p-1)q}\right)^{1/q}
\left(\sum_{i=1}^n |a_i|^p\right)^{1/p}
$$
および
$$
\sum_{i=1}^n |a_i + b_i|^{p-1} |b_i| \leq
\left(\sum_{i=1}^n |a_i + b_i|^{(p-1)q}\right)^{1/q}
\left(\sum_{i=1}^n |b_i|^p\right)^{1/p}
$$
が成り立つ．したがって
$$
\sum_{i=1}^n |a_i + b_i|^p \leq
\left(\sum_{i=1}^n |a_i + b_i|^{(p-1)q}\right)^{1/q}
\left(
    \left(\sum_{i=1}^n |a_i|^p\right)^{1/p} +
    \left(\sum_{i=1}^n |b_i|^p\right)^{1/p}
\right)
$$
となる．

$S = \sum_{i=1}^n |a_i + b_i|^p, A = \left(\sum_{i=1}^n |a_i|^p\right)^{1/p}, B = \left(\sum_{i=1}^n |b_i|^p\right)^{1/p}$ とおくと，$(p-1)q=p$ より
$$
S \leq S^{1/q} (A + B)
$$
となる．仮定より少なくとも一つの $i$ に対して $a_i \neq -b_i$ であるので $S \neq 0$ である．不等式の両辺を $S^{1/q}$ で割ると，$1 - 1/q = 1/p$ より
$$
S^{1/p} \leq A + B
$$
となり，これは示すべき不等式である．

---

**Minkowski の不等式** (無限版)

$p \geq 1$ とする．
$(a_n)_{n=1}^\infty, (b_n)_{n=1}^\infty \subset \mathbb{R}$ とし，$\sum_{n=1}^\infty |a_n|^p < \infty, \sum_{n=1}^\infty |b_n|^p < \infty$ が成り立つとする．
このとき
$$
\left(\sum_{n=1}^\infty |a_n + b_n|^p\right)^{1/p} \leq
\left(\sum_{n=1}^\infty |a_n|^p\right)^{1/p} +
\left(\sum_{n=1}^\infty |b_n|^p\right)^{1/p}
$$
が成り立つ．

---

証明：
$N$ を任意の自然数とすると，有限版の Minkowski の不等式より
$$
\left(\sum_{n=1}^N |a_n + b_n|^p\right)^{1/p} \leq
\left(\sum_{n=1}^N |a_n|^p\right)^{1/p} +
\left(\sum_{n=1}^N |b_n|^p\right)^{1/p}
$$
が成り立つ．関数 $x \mapsto x^{1/p}$ は $x \geq 0$ で連続であるので，$N \to \infty$ の極限を取ることにより
$$
\left(\sum_{n=1}^\infty |a_n + b_n|^p\right)^{1/p} \leq
\left(\sum_{n=1}^\infty |a_n|^p\right)^{1/p} +
\left(\sum_{n=1}^\infty |b_n|^p\right)^{1/p}
$$
となる．
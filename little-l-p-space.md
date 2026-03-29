実数 $p \geq 1$ に対し

$$
l^p := \left\{
    (x_n)_{n=1}^\infty \subset \mathbb{R} :
    \sum_{n=1}^\infty |x_n|^p < \infty
\right\}
$$

と記す．

---

写像 $d_p: l^p \times l^p \to \mathbb{R}$ を任意の $x=(x_n)_{n=1}^\infty, y=(y_n)_{n=1}^\infty \in l^p$ に対して

$$
d_p(x, y) := \left( \sum_{n=1}^\infty |x_n - y_n|^p \right)^{1/p}
$$

と定める．

組 $(l^p, d_p)$ は距離空間となる．この距離空間を単に $l^p$ と記す．

<!-- TODO $d_p$ が定義できることの証明 -->

---

$d_p$ が $l^p$ 上の距離関数であることの証明：
$x=(x_n)_{n=1}^\infty, y=(y_n)_{n=1}^\infty, z=(z_n)_{n=1}^\infty \in l^p$ とする．

(i) $d_p(x, y) \geq 0$ を示す．
各 $n$ に対して $|x_n - y_n|^p \geq 0$ が成り立つので，$(\sum_{n=1}^\infty |x_n - y_n|^p)^{1/p} \geq 0$ が成り立つ．

(ii) $d_p(x, y) = 0 \implies x = y$ を示す．
$d_p(x, y) = 0$ と仮定する．
$\sum_{n=1}^\infty |x_n - y_n|^p$ より各 $n$ について $|x_n - y_n|=0$ が成り立つ．
したがって各 $n$ に対して $x_n = y_n$ となり，$x = y$ が成り立つ．

(iii) $d_p(x, y) = d_p(y, x)$ を示す．
各 $n$ に対して $|x_n - y_n| = |y_n - x_n|$ であるから，$d_p(x, y) = (\sum_{n=1}^\infty |x_n - y_n|^p)^{1/p} = (\sum_{n=1}^\infty |y_n - x_n|^p)^{1/p} = d_p(y, x)$ となる．

(iv) $d_p(x, z) \leq d_p(x, y) + d_p(y, z)$ を示す．
示すべき不等式は
$$
\left(\sum_{n=1}^\infty |x_n - z_n|^p\right)^{1/p} \leq
\left(\sum_{n=1}^\infty |x_n - y_n|^p\right)^{1/p} +
\left(\sum_{n=1}^{\infty} |y_n - z_n|^p\right)^{1/p}
$$
である．$a_n = x_n - y_n, b_n = y_n - z_n$ と置くと，[Minkowski の不等式](basic/minkowski-inequality.md)より
$$
\left(\sum_{n=1}^\infty |a_n + b_n|^p\right)^{1/p} \leq
\left(\sum_{n=1}^\infty |a_n|^p\right)^{1/p} +
\left(\sum_{n=1}^\infty |b_n|^p\right)^{1/p}
$$
が成り立つ．これは示すべき不等式である．

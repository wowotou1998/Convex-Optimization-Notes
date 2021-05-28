
## 互补松弛性
设原问题和对偶问题的最优值都可以达到且相等 (即强对偶性成立). 令 $x^{\star}$ 是原问题的最优解, $\left(\lambda^{\star}, \nu^{\star}\right)$ 是对偶问题的最优解，这表明
$$
\begin{aligned}
原问题所得到的最优值&=对偶问题所得到的最优值
\\
f_{0}(x^{\star}) &=g\left(\lambda^{\star}, \nu^{\star}\right)
\\
&=\inf _{x} \left (f_{0}(x)+\sum_{i=1}^{m} \lambda_{i}^{\star} f_{i}(x)+\sum_{i=1}^{p} \nu_{i}^{\star} h_{i}(x) \right)
\\
& \leqslant f_{0}(x^{\star})+\sum_{i=1}^{m} \lambda_{i}^{\star} f_{i}(x^{\star})+\sum_{i=1}^{p} \nu_{i}^{\star} h_{i}(x^{\star})
\\
& \leqslant f_{0}(x^{\star}).
\end{aligned}
$$

**由于 $\lambda_i \geqslant 0, f_i(x) \leqslant 0, h_i(x) = 0$ 这些诸多限制, 导致对偶问题的取值受到非常强的约束**

第一个等式说明最优对偶间隙为零.  
第二个等式是对偶函数的定义.   
第三个不等式是根据 $\text{Lagrange}$ 函数关于 $x$ 求下确界小于等于其在 $x=x^{\star}$ 处的值得来. (下确界一定是小于等于函数所能取到的任意值)  
最后一个不等式的成立是因为 $\lambda_{i}^{\star} \geqslant 0,f_{i}\left(x^{\star}\right) \leqslant 0, i=1, \cdots, m$, 以及 $h_{i}\left(x^{\star}\right)=0, i=1, \cdots, p$ (因为 $x^{\star} \in \mathcal{D}$, 在原问题的定义域内, 因此 $h_{i}\left(x^{\star}\right)=0,f_{i}\left(x^{\star}\right) \leqslant 0$)  
因此,在上面的式子链中，两个不等式取等号.
$$
\begin{aligned}
f_{0}(x^{\star}) &=g\left(\lambda^{\star}, \nu^{\star}\right)
\\
&=\inf _{x} \left (f_{0}(x)+\sum_{i=1}^{m} \lambda_{i}^{\star} f_{i}(x)+\sum_{i=1}^{p} \nu_{i}^{\star} h_{i}(x) \right)
\\
&= f_{0}(x^{\star})+\sum_{i=1}^{m} \lambda_{i}^{\star} f_{i}(x^{\star})+\sum_{i=1}^{p} \nu_{i}^{\star} h_{i}(x^{\star})
\\
&= f_{0}(x^{\star}).
\end{aligned}
$$
由此可以得出一些有意义的结论. 例如，由于第三个不等式变为等式，我们知道 $L\left(x, \lambda^{\star}, \nu^{\star}\right)$ 关于 $x$ 求极小时在 $x^{\star}$ 处取得最小值.  ( $\text{Lagrange}$ 函数 $L\left(x, \lambda^{\star}, \nu^{\star}\right)$ 也可以有其他最小点; $x^{\star}$ 只是其中一个最小点.
另外一个重要的结论是
$$
\sum_{i=1}^{m} \lambda_{i}^{\star} f_{i}\left(x^{\star}\right)=0
$$
事实上，求和项的每一项都非正，因此有
$$
\lambda_{i}^{\star} f_{i}\left(x^{\star}\right)=0, \quad i=1, \cdots, m .
$$
上述条件称为互补松弛性; 它对任意原问题最优解 $x^{\star}$ 以及对偶问题最优解 $\left(\lambda^{\star}, \nu^{\star}\right)$ 都成立 (当强对偶性成立时). 我们可以将互补松弛条件写成

$$
 (注意,f_i(x^{\star}) \leqslant 0) \\
 \quad \\
\lambda_{i}^{\star}>0 \Longrightarrow f_{i}\left(x^{\star}\right)=0,
$$

或者等价地
$$
f_{i}\left(x^{\star}\right)<0 \Longrightarrow \lambda_{i}^{\star}=0 .
$$
粗略地讲, 上式意味着在最优点处, 除了第 $i$ 个约束起作用的情况，最优 $\text{Lagrange}$ 乘子的第 $i$ 项都为零。
## $\text{KKT}$ 最优性条件
现在假设函数 $f_{0}, \cdots, f_{m}, h_{1}, \cdots, h_{p}$ 可微 $($ 因此定义域是开集 $)$, **但是并不假设这些函数是凸函数.**  

## 非凸问颠的  $\text{KKT}$ 条件( $\text{KKT}$ 条件是原问题有最优解的必要条件)
对于非凸问题来说, 如果非凸问题有最优解,则 $\text{KKT}$ 条件成立,但反之则不一定成立,即使 $\text{KKT}$ 条件满足,但不一定就可以得到非凸问题有最优解.   
和前面一样, 令 $x^{\star}$ 和 $\left(\lambda^{\star}, \nu^{\star}\right)$ 分别是原问题和对偶问题的某对最优解, 对偶间隙为零。因为 $L\left(x, \lambda^{\star}, \nu^{\star}\right)$ 关于 $x$ 求极小在 $x^{\star}$ 处取得最小值, 因此函数在 $x^{\star}$ 处的导数必须为零，即，

$$
\nabla f_{0}\left(x^{\star}\right)+\sum_{i=1}^{m} \lambda_{i}^{\star} \nabla f_{i}\left(x^{\star}\right)+\sum_{i=1}^{p} \nu_{i}^{\star} \nabla h_{i}\left(x^{\star}\right)=0
$$

因此, 我们有

$$
\begin{aligned}
\text{KKT condition} =
\left \{
\begin{array}{ll}
f_{i}(x^{\star})  \leqslant 0,  \qquad i=1, \cdots, m \quad (primal \; feasibility)
\\
h_{i}\left(x^{\star}\right) =0,  \qquad i=1, \cdots, p \quad \boldsymbol{(primal \; feasibility)}
\\
\lambda_{i}^{\star}  \geqslant 0, \qquad \qquad i=1, \cdots, m  \quad (dual \; feasibility)
\\
\lambda_{i}^{\star} f_{i}(x^{\star}) =0,  \quad i=1, \cdots, m  \quad (complementary \; slackness)
\\
\nabla f_{0}(x^{\star})+\sum_{i=1}^{m} \lambda_{i}^{*} \nabla f_{i}(x^{\star})+\sum_{i=1}^{p} \nu_{i}^{\star} \nabla h_{i}(x^{\star}) =0, \quad \boldsymbol{(stationarity)}
\end{array}
\right.
\end{aligned}
$$

**我们称上式为 $\text{Karush-Kuhn-Tucker (KKT)}$ 条件. (加粗的条件经常会用到.)**
总之，对于目标函数和约束函数可微的任意优化问题, 如果强对偶性成立, 那么任何一对原问题最优解和对偶问题最优解必须满足  $\text{KKT}$ 条件。 
## 凸问题的 $\text{KKT}$ 条件(在满足 $\text{Slater}$ 条件的情况下,  $\text{KKT}$ 条件是原问题有最优解的充要条件)
对于满足 $\text{Slater}$ 条件的凸问题来说, 如果凸问题有最优解,则 $\text{KKT}$ 条件成立,且反之也成立,即 $\text{KKT}$ 条件满足,一定就可以得到凸问题有最优解.因此求解凸问题的解可以看成在求解KKT系统.       
**当原问题是凸问题时，满足  $\text{KKT}$ 条件的点也是原对偶最优解。** 换言之，如果函数 $f_{i}$ 是凸函数, $h_{i}$ 是仿射函数, $\tilde{x}, \tilde{\lambda}, \tilde{\nu}$ 是任意满足  $\text{KKT}$ 条件的点,

<!-- $$
\begin{aligned}
f_{i}(\tilde{x}) & \leqslant 0, & & i=1, \cdots, m \\
h_{i}(\tilde{x}) &=0, & & i=1, \cdots, p \\
\tilde{\lambda}_{i} & \geqslant 0, & & i=1, \cdots, m \\
\tilde{\lambda}_{i} f_{i}(\tilde{x}) &=0, & & i=1, \cdots, m \\
\nabla f_{0}(\tilde{x})+\sum_{i=1}^{m} \tilde{\lambda}_{i} \nabla f_{i}(\bar{x})+\sum_{i=1}^{p} \tilde{\nu}_{i} \nabla h_{i}(\tilde{x}) &=0, & &
\end{aligned}
$$ -->

$$
\begin{aligned}
\text{KKT condition} =
\left \{
\begin{array}{ll}
f_{i}(\tilde{x})  \leqslant 0,  \qquad i=1, \cdots, m \quad (primal \; feasibility \;原问题可行性)
\\
h_{i}\left(\tilde{x}\right) =0,  \qquad i=1, \cdots, p \quad (primal \; feasibility \;原问题可行性)
\\
\tilde{\lambda}_{i}  \geqslant 0, \qquad \qquad i=1, \cdots, m  \quad (dual \; feasibility \;对偶问题可行性)
\\
\tilde{\lambda}_{i} f_{i}(\tilde{x}) =0,  \quad i=1, \cdots, m  \quad (complementary \; slackness \;互补松弛条件)
\\
\nabla f_{0}(\tilde{x})+\sum_{i=1}^{m} \tilde{\lambda}_{i} \nabla f_{i}(\tilde{x})+\sum_{i=1}^{p} \tilde{\nu}_{i} \nabla h_{i}(\tilde{x}) =0, \quad (stationarity \;稳定性)
\end{array}
\right.
\end{aligned}
$$

那么 $\tilde{x}$ 和 $(\tilde{\lambda}, \tilde{\nu})$ 分别是原问题和对偶问题的最优解, 对偶间隙为零。 为了说明这一点，注意到前两个条件说明了 $\tilde{x}$ 是原问题的可行解。因为 $\tilde{\lambda}_{i} \geqslant$ $0, L(x, \tilde{\lambda}, \tilde{\nu})$ 是 $x$ 的凸函数; 最后一个 $\mathrm{KKT}$ 条件说明在 $x=\tilde{x}$ 处, $\text{Lagrange}$ 函数的导数为零。因此, $L(x, \tilde{\lambda}, \tilde{\nu})$ 关于 $x$ 求极小在 $\tilde{x}$ 处取得最小值。我们得出结论
$$
\begin{aligned}
g(\tilde{\lambda}, \tilde{\nu}) &=L(\tilde{x}, \tilde{\lambda}, \tilde{\nu}) \\
&=f_{0}(\tilde{x})+\sum_{i=1}^{m} \tilde{\lambda}_{i} f_{i}(\tilde{x})+\sum_{i=1}^{p} \tilde{\nu}_{i} h_{i}(\tilde{x}) \\
&=f_{0}(\tilde{x}),
\end{aligned}
$$
最后一行成立是因为 $h_{i}(\tilde{x})=0$ 以及 $\tilde{\lambda}_{i} f_{i}(\tilde{x})=0_{\circ}$ 这说明原问题的解 $\tilde{x}$ 和对偶问题的 解 $(\tilde{\lambda}, \tilde{\nu})$ 之间的对偶间隙为零, 因此分别是原、对偶最优解。总之，对目标函数和约束函数可微的任意凸优化问题, 任意满足  $\text{KKT}$ 条件的点分别是原、对偶最优解, 对偶间隙为零。 若某个凸优化问题具有可微的目标函数和约束函数，且其满足 $\text{Slater}$ 条件, 那么
 $\text{KKT}$ 条件是最优性的充要条件: $\text{Slater}$ 条件意味着最优对偶间隙为零且对偶最优解可以达到, 因此 $x$ 是原问题最优解, 当且仅当存在 $(\lambda, \nu)$, 二者满足  $\text{KKT}$ 条件。 $\text{KKT}$ 条件在优化领域有着重要的作用。在一些特殊的情形下，是可以解析求解 $\text{KKT}$ 条件的 (也因此可以求解优化问题)。更一般地，很多求解凸优化问题的方法可以 认为或者理解为求解  $\text{KKT}$ 条件的方法。

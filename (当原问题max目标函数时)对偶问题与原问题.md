本文主要讨论如果原问题为最大化目标函数时对偶函数的形式, 以及更进一步理解Lagrange对偶函数.

# 原问题
对于原问题, 和convexbook里的内容略有不同, 这里目标函数是最大化.

$$
\begin{array}{ll}
\text{maximize}  & f_{0}(x) \\
\text{subject to} & f_{i}(x) \leqslant 0, \quad i=1, \cdots, m, \\
&g_i(x) = 0, \quad i=1, \cdots, m, &
\end{array}
$$

那我们可以按照教科书的写法先把目标函数写成最小化的形式, 然后写出Lagrange函数, 对偶函数, 以及对偶问题.
原问题可写成
$$
\begin{array}{ll}
\text{minimize}  & -f_{0}(x) \\
\text{subject to} & f_{i}(x) \leqslant 0, \quad i=1, \cdots, m, \\
&g_i(x) = 0, \quad i=1, \cdots, n, &
\end{array}
$$
显然, 只是目标函数改写了一下,
# Lagrange函数
然后Lagrange函数是:
$$
L(x, \lambda, \nu) = -f_0(x)+\sum_1^m \lambda_i f_i(x) + \sum_1^n \nu_i g_i(x), \\ \lambda_i \geq 0
$$
当有一个可行解 $\tilde{x}$ 时, 有:
$$
\because \lambda_i \geq 0, f_i(\tilde{x}) \leq 0, g_i(\tilde{x}) = 0 \\
L(\tilde{x}, \lambda, \nu) = -f_0(\tilde{x})+\sum_1^m \lambda_i f_i(\tilde{x}) + \sum_1^n \nu_i g_i(\tilde{x}) \leq -f_0(\tilde{x})
$$
也就是说, Lagrange函数的值始终是小于原函数目标函数, $-f_0(\tilde{x})$ 的值.

# Lagrange对偶函数
$$
g(\lambda, \nu) = \inf_{x \in D }{L(x, \lambda, \nu)}
$$
对偶函数 $g(\lambda, \nu)$ 是一个凹函数 (类似于倒扣的碗).

# 对偶问题
$$
\begin{array}{ll}
\max & g(\lambda, \nu) \\
\text{s.t.} & \lambda \geq 0 
\end{array}
$$

在这里我们把对偶函数写的更清晰一些:
$$
\max g(\lambda, \nu)\\
= \max_{\lambda, \nu} \inf_{x \in D }{L(x, \lambda, \nu)} \\
= \max_{\lambda, \nu} \inf_{x \in D } \left( -f_0(\tilde{x})+\sum_1^m \lambda_i f_i(\tilde{x}) + \sum_1^n \nu_i g_i(\tilde{x}) \right), \text{把负号提取出来} \\
= \max_{\lambda, \nu} - \sup_{x \in D } \left( f_0(\tilde{x})+\sum_1^m -\lambda_i f_i(\tilde{x}) + \sum_1^n -\nu_i g_i(\tilde{x}) \right), \text{再把负号提取出来} \\
= - \min_{\lambda, \nu} \sup_{x \in D } \left( f_0(\tilde{x})+\sum_1^m -\lambda_i f_i(\tilde{x}) + \sum_1^n -\nu_i g_i(\tilde{x}) \right), \text{最终的结果}
$$
由上述的表达可知, 把负号提取之后, $\max \inf$ 变成了 $\min \sup$. 

# 最大化目标函数时的 Lagrange函数, Lagrange乘子, 以及对偶问题  
从另一个角度来说, 假设我们不对原问题进行最小化变换. 原问题为:
$$
\begin{array}{ll}
\text{maximize}  & f_{0}(x) \\
\text{subject to} & f_{i}(x) \leqslant 0, \quad i=1, \cdots, m, \\
&g_i(x) = 0, \quad i=1, \cdots, m, &
\end{array}
$$

# Lagrange函数
那么我们可以直接写出 Lagrange函数:
$$
L(x, \lambda, \nu) = f_0(x)+\sum_1^m \lambda_i f_i(x) + \sum_1^n \nu_i g_i(x), \lambda_i \leq 0
$$
注意, 这里 $\lambda_i \leq 0$.

+ 当 $\tilde{x} \in D$ 时, $\lambda_i f_i(\tilde{x}) > 0$, 意思是当约束有富裕的时候, 我们比较满意, 并给予奖励, 即加上一个正数项 $\lambda_i f_i(\tilde{x})$, 因此Lagrange函数的值比原函数的值要大, 此时, Lagrange函数的值始终是大于原函数目标函数, $f_0(\tilde{x})$ 的值:
$$
\because \lambda_i \leq 0, f_i(\tilde{x}) \leq 0, g_i(\tilde{x}) = 0 \\
L(\tilde{x}, \lambda, \nu) = f_0(\tilde{x})+\sum_1^m \lambda_i f_i(\tilde{x}) + \sum_1^n \nu_i g_i(\tilde{x}) \geq f_0(\tilde{x})
$$
+ 当 $\tilde{x} \notin D$ 时, $\lambda_i f_i(\tilde{x}) < 0$, 意思是当约束被违背的时候, 我们不满意, 并给予惩罚, , 即加上一个负数项 $\lambda_i f_i(\tilde{x})$, 因此Lagrange函数的值比原函数的值要小.

##  Lagrange对偶函数(原函数的目标是最大化):
$$
g(\lambda, \nu) = \sup_{x \in  D}L(\tilde{x}, \lambda, \nu) = f_0(\tilde{x})+\sum_1^m \lambda_i f_i(\tilde{x}) + \sum_1^n \nu_i g_i(\tilde{x})
$$
此时, $g(\lambda, \nu)$ 是凸函数.
## Lagrange对偶问题
$$
\min_{\lambda,\nu} \sup_{x \in  D}L(\tilde{x}, \lambda, \nu) = f_0(\tilde{x})+\sum_1^m \lambda_i f_i(\tilde{x}) + \sum_1^n \nu_i g_i(\tilde{x})
$$

最小化凸函数仍然是一个凸问题.
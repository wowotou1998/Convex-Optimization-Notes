定理：AdaBoost算法是前向分布加法算法的特例。这时模型是由基本分类器组成的加法模型，损失函数是指数函数。

证明：

加法模型等价于AdaBoost的最终分类器
$$f(x)=\sum_{m=1}^{M}\alpha_{m}G_{m}(x)$$

由基本分类器 $G_{m}(x)$ 及其系数 $\alpha _{m}$ 组成，$m=1,2,...,M$. 

前向分布算法逐一学习基本函数，这一过程与AdaBoost算法逐一学习基本分类器的过程一致。

下面证明前向分布算法的损失函数是指数损失函数（exponential loss function）时，其学习的具体操作等价于AdaBoost算法学习的具体操作。

指数损失函数的形式如下：
$$L(y,f(x))=exp[-yf(x)]$$
其中，我们只考虑二分类问题，那么 $y \in \{-1,+1\},f(x) \in \{-1,+1\}$。

假设经过$m-1$轮迭代前向分布算法已经得到 $f_{m-1}(x)$ ：

$$
\begin{aligned}
&f_{m-1}(x)\\
&= f_{m-2}(x)+\alpha _{m-1}G_{m-1}(x) \quad \text{递归展开}\\
&=\alpha _{1}G_{1}(x)+\cdots +\alpha _{m-1}G_{m-1}(x)
\end{aligned}
$$

在第 $m$ 轮得到 $\alpha _{m},G_{m}(x)$ 和 $f_{m}(x)$.

$$f_{m}(x)=f_{m-1}(x)+\alpha _{m}G_{m}(x)$$
目标是使前向算法得到的 $\alpha_{m}$ 和 $G_{m}$ 使 $f_{m}(x)$ 在训练数据集 $T$ 上的指数损失最小，即：

$$(\alpha _{m},G_{m}(x))=\arg~\underset{\alpha,G}{\min}\sum_{i=1}^{N}exp[-y_{i}(f_{m-1}(x_{i})+\alpha G(x_{i}))]$$

由于上式中，只有 $\alpha_{m},G_{m}(x)$ 这两个参数是待定的，其他的都是已知的，则上式可以表示成：

$$(\alpha _{m},G_{m}(x))=\arg~\underset{\alpha,G}{\min}\sum_{i=1}^{N}\overline{w}_{mi}exp[-y_{i}\alpha G(x_{i})]$$

其中， $\overline{w}_{mi}=exp[-y_{i}f_{m-1}(x_{i})]$ ，且 $\overline{w}_{mi}$ 不依赖于 $\alpha$ ，也不依赖于 $G$ 。

**我们可以通过合并同类项的技巧分别求最优 $\alpha^*, G_{m}^{*}(x)$.**

首先求 $G_{m}^{*}(x)$ ，进一步展开：
 $$
 \begin{aligned}
 &\sum_{i=1}^{N}\overline{w}_{mi}exp[-y_{i}\alpha G(x_{i})]\\
 &=\sum_{i=1}^{N}\overline{w}_{mi}e^{-\alpha}I\{y_{i}=G(x_{i})\}+\sum_{i=1}^{N}\overline{w}_{mi}e^{\alpha}I\{y_{i}\neq G(x_{i})\}\\
 &=e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}=G(x_{i})\}+
 e^{\alpha}\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}\\
 &+e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}-
 e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}
 \end{aligned}
 $$
上式中加上 $e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}$ 又减去 $e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}$ 这个操作可以帮助后续的合并同类项，方便优化过程。


所以最小化 $G(x)$ 由下式得到：

$$G_{m}^{*}(x)=\arg~\underset{G}{\min}\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}$$

**即最优的 $G_{m}^{*}(x)$ 就是选出误差率最小的弱分类器，注意，这个误差率不是误分类的个数。误差率不仅和误分类的样本点有关，还和误分类样本点所对应的权重有关。这也是为什么Adaboost要给样本点分配权重**


之后我们求解 $\alpha _{m}^{*}$ ：

$$
\begin{aligned}
&\sum_{i=1}^{N}\overline{w}_{mi}exp[-y_{i}\alpha G(x_{i})\\
&=\sum_{y_{i}=G_{m}(x_{i})}\overline{w}_{mi}e^{-\alpha}+\sum_{y_{i}\neq G_{m}(x_{i})}\overline{w}_{mi}e^{\alpha}\\
&=e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}+(e^{\alpha}-e^{-\alpha})\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}
\end{aligned}$$

对 $\alpha$ 求导：

$$\frac{\partial }{\partial \alpha}(e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}+(e^{\alpha}-e^{-\alpha})\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\})\\
=-e^{-\alpha}\sum_{i=1}^{N}\overline{w}_{mi}+(e^{\alpha}+e^{-\alpha})\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}=0$$

即得：

$$\frac {e^{\alpha}+e^{-\alpha}}{e^{-\alpha}}=\frac {\sum_{i=1}^{N}\overline{w}_{mi}}{\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}}\\
\alpha _{m}^{*}=\frac{1}{2}log\frac{1-e_{m}}{e_{m}}$$

其中 $e_{m}$ 是分类错误率：

$$e_{m}=\frac {\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}}{\sum_{i=1}^{N}\overline{w}_{mi}}=\sum_{i=1}^{N}\overline{w}_{mi}I\{y_{i}\neq G(x_{i})\}$$
这里的 $\alpha_{m}^{*}$ 与AdaBoost算法的 $\alpha _{m}$ 完全一致。

再看一下每一轮的权值更新，由：

$$f_{m}(x)=f_{m-1}(x)+\alpha_{m}G_{m}(x)\\$$

以及 $\overline{w}_{mi}=exp[-y_{i}f_{m-1}(x_{i})]$ ，可得：

$$\overline{w}_{m+1,i}=\overline{w}_{m,i}exp[-y_{i}\alpha_{m}G_{x}]\\$$

这与AdaBoost算法的样本权值的更新，只相差规范会因子，因此等价。
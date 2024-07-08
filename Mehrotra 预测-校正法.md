Mehrotra 预测-校正法（Mehrotra Predictor-Corrector Method）是一种用于求解线性规划（Linear Programming, LP）问题的内点法（Interior Point Method）。内点法是一类通过迭代方法在可行域内部寻找最优解的算法，与单纯形法（Simplex Method）不同，后者是沿着可行域的边界寻找最优解。

Mehrotra 预测-校正法的主要思想是在每次迭代中使用一个预测步（Predictor Step）和一个校正步（Corrector Step），以加速收敛过程。具体步骤如下：

### 1. 问题描述

给定一个标准形式的线性规划问题：
$$
 \min \quad  c^T x \\
 \text{s.t.} \quad  Ax = b, \; x \ge 0 
$$
其中 $c$ 是目标函数的系数向量，$A$ 是约束矩阵，$b$ 是约束条件的右端向量，$x$ 是变量向量。

### 2. 初始点选择

选择一个初始的可行点 $(x_0, y_0, s_0)$，其中 $x_0 > 0$ 是初始的变量向量，$y_0$ 是对偶变量向量，$s_0 > 0$ 是松弛变量向量。这里，松弛变量 $s$ 用于将不等式约束转化为等式约束。

### 3. 预测步（Predictor Step）

预测步通过求解以下线性方程组来计算预测方向：

$$
 \begin{pmatrix}
A & 0 & 0 \\
0 & A^T & I \\
S & 0 & X 
\end{pmatrix}
\begin{pmatrix}
\Delta x^{(p)} \\
\Delta y^{(p)} \\
\Delta s^{(p)}
\end{pmatrix}
=
\begin{pmatrix}
0 \\
0 \\
- X S e
\end{pmatrix} 
$$

其中 $X$ 和 $S$ 是对角矩阵，元素分别是 $x$ 和 $s$ 的当前值，$e$ 是全 1 向量，$\Delta x^{(p)}$, $\Delta y^{(p)}$, $\Delta s^{(p)}$ 是预测方向。

### 4. 校正步（Corrector Step）

校正步通过以下公式修正预测方向，从而得到校正方向：
$$
 r_c = c - A^T y - s \\
 r_b = b - A x \\
 r_{\mu} = \sigma \mu e - X S e - \Delta X \Delta S e \\
$$
其中 $\mu$ 是当前 $x$ 和 $s$ 的均值，$\sigma$ 是一个常数（通常取 0.1 到 0.2），$\Delta X$ 和 $\Delta S$ 是预测方向的对角矩阵。

校正方向通过求解以下方程组得到：
$$
 \begin{pmatrix}
A & 0 & 0 \\
0 & A^T & I \\
S & 0 & X 
\end{pmatrix}
\begin{pmatrix}
\Delta x^{(c)} \\
\Delta y^{(c)} \\
\Delta s^{(c)}
\end{pmatrix}
=
\begin{pmatrix}
r_b \\
r_c \\
r_{\mu}
\end{pmatrix} 
$$

### 5. 更新步

更新变量 $x$, $y$, $s$：
$$
 x_{k+1} = x_k + \alpha \Delta x 
 y_{k+1} = y_k + \alpha \Delta y 
 s_{k+1} = s_k + \alpha \Delta s 
$$
其中 $\alpha$ 是步长系数，通常通过线搜索方法确定，以确保 $x_{k+1} > 0$ 和 $s_{k+1} > 0$。

### 6. 迭代

重复预测步和校正步，直到满足收敛条件为止，例如 $\| Ax - b \| \le \epsilon$ 和 $\| c - A^T y - s \| \le \epsilon$，其中 $\epsilon$ 是预定的小正数。

通过以上步骤，Mehrotra 预测-校正法能够有效地求解线性规划问题，具有较好的收敛性能和计算效率。
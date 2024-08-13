### Resolvents

The resolvent of an operator A is defined as
$$\mathbf{J_A}=(\mathbf{I}+\mathbf{A})^{-1}.$$
The $reflected\textit{ resolvent, also called the Cayley operator or the reflection operator, }$

of A is defined as
$$\mathbf{R_A}=2\mathbf{J_A}-\mathbf{I}.$$
Often, we will use $\mathbf{J}_\alpha\mathbf{A}$ and $\mathbf{R}_{\alpha\mathbf{A}}$ with $\alpha>0.$
<br>
**If A is maximal monotone, $\mathbf{R}_\mathbf{A}$ is a nonexpansive (single-valued) with $\dim\mathbf{R_A}=\mathbf{R}^n$, and $\mathbf{J_A}$ is a (1/2)-averaged with $\operatorname{dom}\mathbf{J}_\mathbf{A}=\mathbf{R}^n.$**
<br>

Peaceman-Rachford and Douglas-Rachford splitting
Consider the problem
$$\begin{aligned}\operatorname{find}_{x\in\mathbf{R}^n}\quad0\in(\mathbf{A}+\mathbf{B})x,\end{aligned}$$
where $A$ and B are maximal monotone.
For any $\alpha>0$, we have
$$
\begin{aligned}0\in(\mathbf{A}+\mathbf{B})x&\Leftrightarrow\quad0\in(\mathbf{I}+\alpha\mathbf{A})x-(\mathbf{I}-\alpha\mathbf{B})x\\
&\Leftrightarrow\quad0\in(\mathbf{I}+\alpha\mathbf{A})x-\mathbf{R}_{\alpha\mathbf{B}}(\mathbf{I}+\alpha\mathbf{B})x \quad (since \;\mathbf{R}_{\alpha \mathbf{B}} = (\mathbf{I}-\mathbf{\alpha}\mathbf{B})(\mathbf{I}+\mathbf{\alpha}\mathbf{B})^{-1})\\

&\Leftrightarrow\quad0\in(\mathbf{I}+\alpha\mathbf{A})x-\mathbf{R}_{\alpha\mathbf{B}}z,\:z\in(\mathbf{I}+\alpha\mathbf{B})x\\

&\Leftrightarrow\quad\mathbf{R}_{\alpha\mathbf{B}}z\in(\mathbf{I}+\alpha\mathbf{A})\mathbf{J}_{\alpha\mathbf{B}}z,\:x=\mathbf{J}_{\alpha\mathbf{B}}z \quad (since\; \mathbf{J}_{\alpha \mathbf{B}} = (\mathbf{I}+\alpha \mathbf{B})^{-1} )\\

&\Leftrightarrow\quad\mathbf{J}_{\alpha\mathbf{A}}\mathbf{R}_{\alpha\mathbf{B}}z=\mathbf{J}_{\alpha\mathbf{B}}z,\:x=\mathbf{J}_{\alpha\mathbf{B}}z \quad (since\; \mathbf{J}_{\alpha \mathbf{A}} = (\mathbf{I}+\alpha \mathbf{A})^{-1} )\\

&\Leftrightarrow\quad\mathbf{R}_{\alpha\mathbf{A}}\mathbf{R}_{\alpha\mathbf{B}}z=z,\; x=\mathbf{J}_{\alpha\mathbf{B}}z,
\end{aligned}$$
>   Here we derive the last two lines of the above equation,  $$\begin{aligned} & J_A R_B z = J_B z \\ &therefore \\ &(R_A) R_B z \\ &= (2 J_A -I) R_B z  \quad  (since \; R_A = 2 J_A -I)\\ &= 2 J_A R_B z - R_B z \\ &= 2 J_B z - R_B z  \quad  (since \; J_A R_B z = J_B z) \\ &= (2 J_B - R_B ) z  \quad  (since \;  I = 2 J_B -R_B) \\ &= I*z  = z \\ \end{aligned} $$
where we have used (2.13) So, x is a solution if and only if there is a $z\in 

Since the operator $\mathbf{R}_{\alpha\mathbf{A}}\mathbf{R}_{\alpha\mathbf{B}}$ is merely nonexpansive, the FPI with PRS
$$z^{k+1}=\mathbf{R}_{\alpha\mathbf{A}}\mathbf{R}_{\alpha\mathbf{B}}(z^k)$$
(2.14)

is not guaranteed to converge. See Exercise 2.27.
To ensure convergence, we average. For any $\alpha>0$, we have
$$0\in(\mathbf{A}+\mathbf{B})x\quad\Leftrightarrow\quad\left(\frac{1}{2}\mathbf{I}+\frac{1}{2}\mathbf{R}_{\alpha\mathbf{A}}\mathbf{R}_{\alpha\mathbf{B}}\right)(z)=z,\:x=\mathbf{J}_{\alpha\mathbf{B}}(z).$$

$$
\begin{aligned}
x^{k+1/2}& =\mathbf{J}_{\alpha\mathbf{B}}(z^{k})  对应于 x = \mathbf{J}_{\alpha \mathbf{B}}{z} \\
x^{k+1}& =\mathbf{J}_{\alpha\mathbf{A}}(2x^{k+1/2}-z^k) 对应于
\mathbf{J}_{\alpha\mathbf{A}}(2\mathbf{J}_{\alpha \mathbf{B}}{z}-z) 
= \mathbf{J}_{\alpha\mathbf{A}}((2\mathbf{J}_{\alpha \mathbf{B}}-I){z})  
= \mathbf{J}_{\alpha\mathbf{A}}(\mathbf{R}_{\alpha \mathbf{B}}{z})  
\\
z^{k+1}& =z^k+x^{k+1}-x^{k+1/2} 对应于z+\mathbf{J}_{\alpha\mathbf{A}}(\mathbf{R}_{\alpha \mathbf{B}}{z})-\mathbf{J}_{\alpha \mathbf{B}}{z}
=(I+\mathbf{J}_{\alpha\mathbf{A}}\mathbf{R}_{\alpha \mathbf{B}}-\mathbf{J}_{\alpha \mathbf{B}})z
=(I+\frac{\mathbf{R}_{\alpha\mathbf{A}}+I}{2}\mathbf{R}_{\alpha \mathbf{B}}-\frac{\mathbf{R}_{\alpha \mathbf{B}}+I}{2})z
=(\frac{1}{2} I + \frac{1}{2} \mathbf{R}_{\alpha\mathbf{A}} \mathbf{R}_{\alpha\mathbf{B}}) z
\end{aligned}


$$
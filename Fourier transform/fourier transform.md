# 三角函数的正交性
三角函数的标准形式为公式 2.1 所示
$$
f(t) = A \sin (\omega_t+\varphi) \tag{2.1} 
$$
其中, $t$ 为时间变量,
$A$ 为波幅,  
$\omega$ 为角速度,  $\varphi$ 为相位, 我们可以通过公式2.2求得这个正弦波的频率.
$$
f=\frac{\omega}{2 \pi}  \tag{2.2} 
$$
并由式2.2可知, 角速度和正弦波的频率是正相关的.

同时, 因为三角函数是周期函数, 其在 $-\pi$ 到 $\pi$ 的积分必定为 0, 由此性质可写出式 $2.3$, $2.4$
$$
\int_{-\pi}^\pi \sin (\mathrm{nx}) d x=0 \tag{2.3}
$$
$$
\int_{-\pi}^\pi \cos (\mathrm{nx}) d x=0 \tag{2.4}
$$
设某三角函数为
$$
f(x)=\sin (n x) \tag{2.5}
$$
在式 $2.5$ 两边同时乘以 $\sin (\mathrm{mx})$ 同时,对两边在 $-\pi$ 到 $\pi$ 内进行积分, 得出
$$
\int_{-\pi}^\pi f(x) \sin (m x) d x=\int_{-\pi}^\pi \sin (\mathrm{nx}) \sin (m x) d x \tag{2.6}
$$
由三角函数的积化和差公式,上式可变形为
$$
\begin{aligned}
& \int_{-\pi}^\pi f(x) \sin (m x) \mathrm{dx}=\frac{1}{2} \int_{-\pi}^\pi \cos [(m-n) x]-\cos [(m+n) x] \mathrm{dx}=\frac{1}{2} \\
& \int_{-\pi}^\pi \cos [(m-n) x] \mathrm{dx}-\frac{1}{2} \int_{-\pi}^\pi \cos [(m+n) x] \mathrm{dx} \tag{2.7}
\end{aligned}
$$
依据上述推导方法我们可以继续推导出下列公式:
$$
\begin{aligned}
& \int_{-\pi}^\pi \cos (\mathrm{mx}) \cos (\mathrm{nx}) d x \\
&=\frac{1}{2} \int_{-\pi}^\pi \cos [(m-n) x]+\cos [(m+n x)] \mathrm{dx} \\
&=\frac{1}{2}  \int_{-\pi}^\pi \cos [(m-n) x] \mathrm{dx}+\frac{1}{2} \int_{-\pi}^\pi \cos [(m+n) x] \mathrm{dx} \tag{2.8}
\end{aligned}
$$
$$
\begin{aligned}
& \int_{-\pi}^\pi \sin (m \mathrm{x}) \cos (\mathrm{nx}) d x \\
&=\frac{1}{2} \int_{-\pi}^\pi \sin [(m-n) x]+\sin [(m+n) x] \mathrm{dx} \\
&=\frac{1}{2}\int_{-\pi}^\pi \sin [(m-n) x] \mathrm{dx}+\frac{1}{2} \int_{-\pi}^\pi \sin [(m+n) x] \mathrm{dx} \quad(2.9)
\end{aligned}
$$
因为三角函数在- $\pi$ 到 $\pi$ 内的积分为 0 , 因此当 $m \neq n$ 时, 式 $2.7 、 2.8 、 2.9$ 的结果必定为 0, 因此可以得出以下结论, **频率不同的三角函数相乘在一个周期内 $(-\pi$ 到 $\pi)$ 的积分必定为 0.**


# 第二节 傅里叶级数推导
法国数学家傅里叶在提出傅里叶级数时认为，任何一个周期信号都可以展开成傅里叶级数，之后这个结论被进一步补充，只有在满足狄利克雷条件时，周期信号才能够被展开成傅里叶级数.
其中，狄利克雷条件的定义如下:
1. 在一周期内，连续或只有有限个第一类间断点.
2. 在一周期内，极大值和极小值的数目应是有限个.
3. 在一周期内，信号是绝对可积的.
现假设一函数 $f(t)$ 由一个直流分量和若干余弦函数组成，如式2.10所示

>$$
f(t)=c_0+\sum_{n=1}^{\infty} c_n \cos (n \omega t+\varphi) \tag{2.10}
$$

利用三角函数的和差化积公式 上式可以进一步变形为
>$$
f(t)=c_0+\sum_{n=1}^{\infty}\left[c_n \cos \varphi \cos (n \omega t)-c_n \sin \varphi \sin (n \omega t)\right]  \tag{2.11}
$$

设 $a_n, b_n$ 为:

$$
a_n=c_n \cos \varphi \tag{2.12} 
$$

$$
b_n=-c_n \sin \varphi \tag{2.13}
$$

那么,式2.11可写作
>$$
f(t)=c_0+\sum_{n=1}^{\infty}\left[a_n \cos (\mathrm{n} \omega \mathrm{t})+b_n \sin (\mathrm{n} \omega \mathrm{t})\right] \tag{2.14}
$$

式2.14实际上即是傅里叶级数的展开式, 从上式可知,若要将一个周期信号展开为傅里叶级数形式,实 现上就是确定级数 $a_n b_n$ ，那么就下来我们讨论的就是如何求出 $a_n b_n$ .
在式2.14的两边同时乘以一个 $\sin (\mathrm{k} \omega \mathrm{t})$, 并对它们在一个周期内进行积分,那么就有

$$
\begin{aligned}
& \int_0^T f(t) \sin (\mathrm{k} \omega \mathrm{t}) d t \\
&=\int_0^T c_0 \sin (\mathrm{k} \omega \mathrm{t}) \mathrm{dt} \\
&+ \int_0^T \sin (\mathrm{k} \omega \mathrm{t}) \sum_{n=1}^{\infty}
\left[
    a_n \cos (\mathrm{n} \omega \mathrm{t})+
    b_n \sin (\mathrm{n} \omega \mathrm{t})
\right] \mathrm{dt} \tag{2.15}
\end{aligned}
$$

**根据第一节的推论，频率不同的三角函数相乘在一个周期内的积分必定为 0**, 因此，仅有 $k=n$ 时不为 0, 那么其中 $\int_0^T c_0 \sin (\mathrm{k} \omega \mathrm{t}) \mathrm{dt}$ 结果为 0,
$\int_0^T a_n \cos (\mathrm{n} \omega \mathrm{t}) \sin (\mathrm{k} \omega \mathrm{t}) \mathrm{dt}$ 结果也必定为 0 , 
因此上式可以进一步化简为
$$
\int_0^T f(t) \sin (\mathrm{k} \omega \mathrm{t}) d t=b_n \int_0^T \sin (\mathrm{n} \omega \mathrm{t})^2 d t=b_n \frac{T}{2} \\ \tag{2.16}
$$
因此,得出
$$
b_n=\frac{2}{T} \int_0^T f(t) \sin (\mathrm{n} \omega \mathrm{t}) \mathrm{dt} \tag{2.17}
$$
依照上述方法,同样可以计算出
$$
a_n=\frac{2}{T} \int_0^T f(t) \cos (\mathrm{n} \omega \mathrm{t}) \mathrm{dt} \tag{2.18}
$$
同时，通过以下公式可以得知傅里叶级数与波幅相位之间的关系
$$
c_n=\sqrt{a_n^2+b_n^2} \tag{2.19}
$$
$$
\varphi=\arctan \left(-\frac{b_n}{a_n}\right) \tag{2.20}
$$

# 第三节 复变函数到僡里叶级数
常用复数函数表达式:
$$
e^{j \theta}=\cos \theta+j \sin \theta \tag{3.20}
$$
其中公式中 $\mathrm{e}$ 是自然对数的底， $\mathrm{i}$ 是虚数单位.
该函数将晶数、指数函数与三角函数相互联系起来.如果定义一个㪚平面，其中以横坐标方向作为 实数方向，纵坐标方向作为虚数方向，担变函数实际上是一个绕原点旋转的一个圆，如图2.3.1:


由公式
$$
\theta=\omega t=\frac{2 \pi}{T} t \tag{3.21}
$$
可知，该复变函数可以看做是一个角速度为 $\omega$, 周期为 $T$ 在复平面上绕原点旋转的半径为 1 的圆.
将公式代回到复变函数中，那么，是变函数可以写成公式3.22的形式
$$
e^{\mathrm{j} \omega t}=\cos \omega t+j \sin \omega t \tag{3.22}
$$
设一组三角函数，其频率是 $\cos \omega t$ 的n倍，其中 $n$ 是大于 0 的正整数，那么可以定义这一组三角函 数为:
$$
\begin{aligned}
& \cos (\mathrm{nwt})=\frac{e^{\mathrm{j} w \mathrm{i}}+e^{-\mathrm{j} \omega t}}{2}(3.23) \\
& \sin (\mathrm{nwt})=\frac{e^{\mathrm{j} \omega \mathrm{t}}-e^{-\mathrm{m} \omega \mathrm{t} t}}{2 j}(3.24)
\end{aligned}
$$
将公式3.23与3.24代回到式2.14中，可得到如下公式
进一步化简可以得到:
$$
f(t)=c_0+\sum_{n=1}^{\infty}\left[\frac{\left(a_n-j b_n\right)}{2} e^{j n \omega t}+\frac{\left(a_n+j b_n\right)}{2} e^{-j n \omega t}\right](3.26)
$$
因为
$$
\begin{aligned}
& a_{-n}=\frac{2}{T} \int_0^T f(t) \cos (-n \omega t) \mathrm{dt}=a_n \\
& b_{-n}=\frac{2}{T} \int_0^T f(t) \sin (-n \omega t) d t=-b_n
\end{aligned}
$$
因此，上式可变为
$$
f(t)=c_0+\sum_{n=1}^{\infty}\left[\frac{\left(a_n-j b_n\right)}{2} e^{j n \omega t}+\frac{\left(a_{-n}-j b_{-n}\right)}{2} e^{-j n \omega t}\right](3.29)
$$
即
$$
f(t)=c_0+\sum_{n=1}^{\infty} \frac{\left(a_n-j b_n\right)}{2} e^{j n \omega t}+\sum_{-\infty}^{-1} \frac{\left(a_n-j b_n\right)}{2} e^{j n \omega t}
$$

这里注意一点 $c_0$ 为直流分量，对应频率为 0 的情况, 即 $c_0$ 为 $n=0$ 的情况
>$$
f(t)=\sum_{n=-\infty}^{\infty} \frac{\left(a_n-j b_n\right)}{2} e^{j n \omega t}(3.30)
$$

上式可写为

>$$
f(t)=\sum_{n=-\infty}^{\infty} A_n e^{j n \omega t}, \quad A_n=\frac{\left(a_n-j b_n\right)}{2} \tag{3.31}
$$

式 $3.31$ 就是复数形式的傅里叶级数，其中， $A_n$ 是一个复数,在式 $3.31$ 的两边同时乘以一个 $e^{-j k w t}$, 并对它们在一个周期内进行积分，得到式子 $3.32$

$$
\int_0^T f(t) e^{-j k \omega t} d t=\int_0^T \sum_{n=-\infty}^{+\infty} A_n e^{j(n-k) \omega t} d t \tag{3.32}
$$

由第一节的正交性推论可知,当 $\mathrm{n}$ 与 $\mathrm{k}$ 不相等时,积分结果必定为 0 ,仅当 $n=k$ 时，右表达式有值，因此， 推导出 $3.33$

$$
\int_0^T f(t) e^{-j n \omega t} d t=A_n T \tag{3.33}
$$

即得出复数 $A_n$ 的求法

>$$
A_n=\frac{1}{T} \int_0^T f(t) e^{-j n \omega t} d t \tag{3.34}
$$

通过求 $A_n$ 的模(式2.19), 可求得该频率波的幅值的一半

$$
|A n|=\frac{1}{2} \sqrt{a n^2+b_n^2}=\frac{1}{2} c_n
$$

而通过对其虛部与实部反正切，就可以求得该频率波的相位.
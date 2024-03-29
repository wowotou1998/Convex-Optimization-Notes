
<map version="0.9.0">
    <node CREATED="0" ID="9e25e413e1cf4f8481dc5f3699e90784" MODIFIED="0" TEXT="凸优化脑图">
        <node CREATED="0" ID="4ea5734eb103476ba5000bc77584825e" MODIFIED="0" POSITION="right" TEXT="​优化: 从一个可行解的集合当中寻找最好的元素"/>
        <node CREATED="0" ID="e448b3f5585f478b9bd721a31b609a10" MODIFIED="0" POSITION="right" TEXT="​集合  X\mathcal{X}X  X‾\overline{\mathcal{X}}  X\mathcal{X}X ">
            <node CREATED="0" ID="cd6b00a6b6af4abca9bfa0a8985fcfa0" MODIFIED="0" POSITION="right" TEXT="​  X\mathcal{X}X 的内部,   int X\text{int } \mathcal{X}int X "/>
            <node CREATED="0" ID="1f7ce998ddfa433b976858df2b8844bc" MODIFIED="0" POSITION="right" TEXT="​  X\mathcal{X}X 的闭集,   cl X\text{cl } \mathcal{X}cl X 或者   X‾\overline{\mathcal{X}} X "/>
            <node CREATED="0" ID="9264bced637542729249b1782fb6b0ca" MODIFIED="0" POSITION="right" TEXT="​  X\mathcal{X}X 的边界,   ∂X\partial \mathcal{X} ∂X "/>
        </node>
        <node CREATED="0" ID="92bc4ec515bb45f18ce741d82d3213db" MODIFIED="0" POSITION="right" TEXT="​凸集">
            <node CREATED="0" ID="5b60eea1e255464089fdbe6d352ea9bc" MODIFIED="0" POSITION="right" TEXT="​常见凸集">
                <node CREATED="0" ID="fc1abf036c97447cb6b1c24291c8cbbd" MODIFIED="0" POSITION="right" TEXT="​凸集"/>
                <node CREATED="0" ID="eb08fb5d99154ff39e3bd2b566f40fa9" MODIFIED="0" POSITION="right" TEXT="​仿射集"/>
                <node CREATED="0" ID="df0410cd9c7940d7abca007212bc8eb3" MODIFIED="0" POSITION="right" TEXT="​凸锥集"/>
            </node>
            <node CREATED="0" ID="14deaeaf77a24349ada7f0d067fc0ddc" MODIFIED="0" POSITION="right" TEXT="​原集合的超集">
                <node CREATED="0" ID="40259b70eee44aa4b1ef6389476ea993" MODIFIED="0" POSITION="right" TEXT="凸包​ 仿射包 凸锥包"/>
            </node>
            <node CREATED="0" ID="879dfde5e66a47c7b741692f0b57f26b" MODIFIED="0" POSITION="right" TEXT="​典型的凸集与证明"/>
            <node CREATED="0" ID="a28e762fafd049be94825c3bc0a8ae0b" MODIFIED="0" POSITION="right" TEXT="​保凸运算: 对集合中元素的各种操作">
                <node CREATED="0" ID="c1ecb3a40e0346b99fe7849605b54618" MODIFIED="0" POSITION="right" TEXT="取​交集 仿射变换(伸缩和平移) 透视函数 (伸缩),    P:Rn+1→Rn,P(z,t)=z/tP: R^{n+1} \rightarrow R^n, P(z,t)=z/tP:Rn+1→Rn,P(z,t)=z/t  线性分式=透视函数(仿射变换, 仿射变换)"/>
            </node>
        </node>
        <node CREATED="0" ID="92eb7985cca94661ab30b6fcf5f72a93" MODIFIED="0" POSITION="right" TEXT="​凸函数">
            <node CREATED="0" ID="c4585bef209e46eb8e08b28fa85b4cae" MODIFIED="0" POSITION="right" TEXT="​凸函数的4个判断方法 (要先确保函数定义域是凸集)">
                <node CREATED="0" ID="9515ec6286654e5591773517ddf3110d" MODIFIED="0" POSITION="right" TEXT="​基本定义"/>
                <node CREATED="0" ID="5c0801b86e51484eaf5a6579c8b00c4b" MODIFIED="0" POSITION="right" TEXT="​判断函数在定义域内直线上的凸性 (西瓜在任一方向上切一刀都是凸的)"/>
                <node CREATED="0" ID="d8d38df4311f4394b64133b27779df5f" MODIFIED="0" POSITION="right" TEXT="​一阶条件"/>
                <node CREATED="0" ID="a5bb5d9c4ea54cafbe39c1e0d633fba2" MODIFIED="0" POSITION="right" TEXT="​二阶条件"/>
            </node>
            <node CREATED="0" ID="be94a4655a3845ba9428b10356307985" MODIFIED="0" POSITION="right" TEXT="​保持函数凸性的操作">
                <node CREATED="0" ID="42fd428a99d04cefa2a720951ca15927" MODIFIED="0" POSITION="right" TEXT="​非负加权求和 复合仿射映射 逐点最大和逐点上确界 某些满足特定条件的复合操作 透视函数"/>
            </node>
            <node CREATED="0" ID="3d525d41ab94423499a396330b7e69e7" MODIFIED="0" POSITION="right" TEXT="​拟凸函数"/>
            <node CREATED="0" ID="b55f2710fa5744e8a23277f0899961c2" MODIFIED="0" POSITION="right" TEXT="​α-sub-level-set"/>
            <node CREATED="0" ID="dc9e80354c9e47d5b56918b0b2a27c94" MODIFIED="0" POSITION="right" TEXT="​凸问题的定义 (全局最优=局部最优)">
                <node CREATED="0" ID="f49b6c0c4ec34f56a876785dff72c895" MODIFIED="0" POSITION="right" TEXT="​目标函数是凸函数 等式约束是仿射函数 不等式约束是凸函数 可行域是凸集"/>
            </node>
        </node>
        <node CREATED="0" ID="a167eb65dfef49fca7e6136d4cbad556" MODIFIED="0" POSITION="right" TEXT="​对偶理论">
            <node CREATED="0" ID="09a508d8665d4875aa83275b6fb22aa1" MODIFIED="0" POSITION="right" TEXT="​拉格朗日函数 (可能非凸),   L(x,λ,ν)L(x, \lambda, \nu)L(x,λ,ν) "/>
            <node CREATED="0" ID="2481d23914b945f68d504e29f9a5756f" MODIFIED="0" POSITION="right" TEXT="​对偶函数 (对偶函数是凹函数),   g(λ,ν)=inf⁡x∈XL(x,λ,ν)g(\lambda, \nu)=\underset{x \in \mathcal{X}}{\inf}L(x,\lambda,\nu)g(λ,ν)=x∈Xinf​L(x,λ,ν)   max⁡  g(λ,ν)  s.t.  λ≥0\max \; g(\lambda, \nu) \; s.t. \; \lambda \geq 0"/>
            <node CREATED="0" ID="4278e2c4167c41b7b190d785a78b84a5" MODIFIED="0" POSITION="right" TEXT="​对偶问题 (对偶问题是凸优化问题, 极大化凹函数相当于最小化凸函数), max g(λ,ν)s.t.λ≥0   max⁡  g(λ,ν)  s.t.  λ≥0\max \; g(\lambda, \nu) \; s.t. \; \lambda \geq 0maxg(λ,ν)s.t.λ≥0   max⁡  g(λ,ν)  s.t.  λ≥0\max \; g(\lambda, \nu) \; s.t. \; \lambda \geq 0maxg(λ,ν)s.t.λ≥0   max⁡  g(λ,ν)  s.t.  λ≥0\max \; g(\lambda, \nu) \; s.t. \; \lambda \geq 0maxg(λ,ν)s.t.λ≥0   max⁡g(λ,ν)s.t.λ≥0\max \quad g(\lambda, \nu) \quad \text{s.t.} \quad \lambda \geq 0maxg(λ,ν)s.t.λ≥0 max⁡g(λ,ν)s.t.λ≥0\max \quad g(\lambda, \nu) \\ \text{s.t.} \quad \lambda \geq"/>
            <node CREATED="0" ID="79a1cc3a6351427f93cd3caac5159ab2" MODIFIED="0" POSITION="right" TEXT="​对偶问题相较于原问题的好处">
                <node CREATED="0" ID="c276cba51cc84c98a78df5df16ffb5f0" MODIFIED="0" POSITION="right" TEXT="​即使原问题不是凸问题, 对偶问题也是凸问题, 因此对偶问题比原问题更好解."/>
                <node CREATED="0" ID="ad2cf181c5f74147b2f08886c2fb706e" MODIFIED="0" POSITION="right" TEXT="​对偶问题的最优解计算出的目标值是原问题的目标值的下界."/>
                <node CREATED="0" ID="9879a07ff3714f3393e5eeb49e9d9602" MODIFIED="0" POSITION="right" TEXT="对偶问题有助于分布优化"/>
            </node>
            <node CREATED="0" ID="a2577953bfea4dd69114e1f136beffed" MODIFIED="0" POSITION="right" TEXT="​极大化凹函数">
                <node CREATED="0" ID="8535df9cc57c44d39e3e9e432db08e97" MODIFIED="0" POSITION="right" TEXT="​对偶间隙 鞍点解释对偶间隙"/>
            </node>
            <node CREATED="0" ID="e87fe363629540f59aaa301666740e8c" MODIFIED="0" POSITION="right" TEXT="​KKT条件 (对于凸问题,KKT条件充分必要,不是凸问题,KKT条件退化为必要条件)">
                <node CREATED="0" ID="257ad4364b4744d8a43f1934da843ae4" MODIFIED="0" POSITION="right" TEXT="​原问题的约束(等式与不等式), primary feasibility"/>
                <node CREATED="0" ID="a2ef917da05e41c99c48a07412605610" MODIFIED="0" POSITION="right" TEXT="​对偶问题的约束,   λi≥0λ_i \geq 0λi​≥0 "/>
                <node CREATED="0" ID="9a81126ab33d4a1c801768f34a9dedb4" MODIFIED="0" POSITION="right" TEXT="​互补松弛条件,   λi∗fi=0λ_i * f_i = 0λi​∗fi​=0 ">
                    <node CREATED="0" ID="73c1f407319a41fc86c68ac3a3dca37e" MODIFIED="0" POSITION="right" TEXT="​对于不等式约束, 有可能满足也有可能不满足"/>
                    <node CREATED="0" ID="6781eff62a8e43819ca2aced0801ecbe" MODIFIED="0" POSITION="right" TEXT="​  λi=0,fi̸=0λ_i = 0, f_i \neq 0λi​=0,fi​̸=0 "/>
                </node>
                <node CREATED="0" ID="ed51ee9f27394dd0a06e692161ebafce" MODIFIED="0" POSITION="right" TEXT="​一阶偏导=0"/>
            </node>
        </node>
        <node CREATED="0" ID="4ae2dcdf508a4fe187dc79fb32826723" MODIFIED="0" POSITION="right" TEXT="​优化算法 (凸问题用的话可以保证全局最优, 非凸只能保证局部最优)">
            <node CREATED="0" ID="f2ebc59681e04e6a9ff82ea494a6f40c" MODIFIED="0" POSITION="right" TEXT="​找步长">
                <node CREATED="0" ID="2b39b02a5812428d86641b74ebbcb02c" MODIFIED="0" POSITION="right" TEXT="​精确, 黄金分割法"/>
                <node CREATED="0" ID="3c09c4868782427aa26018ae129a8c4d" MODIFIED="0" POSITION="right" TEXT="​非精确, Armijo Rule"/>
            </node>
            <node CREATED="0" ID="636d162956794fd18e93f64c170ae67e" MODIFIED="0" POSITION="right" TEXT="​找方向">
                <node CREATED="0" ID="3e469b7b772c461e9ca0a29e825a709c" MODIFIED="0" POSITION="right" TEXT="​​无约束优化">
                    <node CREATED="0" ID="2e37a70f11c141be8d04018e5db017a1" MODIFIED="0" POSITION="right" TEXT="梯度下降 最速下降 坐标轮换 牛顿法 (二阶, 刚开始收敛速度较慢, 后期变快) 拟牛顿法 (近似求解 Hessian矩阵)"/>
                </node>
                <node CREATED="0" ID="5ad7572eb27c4fdcba45dce2bdd590e7" MODIFIED="0" POSITION="right" TEXT="​有约束优化">
                    <node CREATED="0" ID="be7dd017d6304ffb8bb95dbc2f92c864" MODIFIED="0" POSITION="right" TEXT="​牛顿, 拟牛顿法 拉格朗日法 增广拉格朗日法 交替方向乘子法ADMM"/>
                </node>
            </node>
        </node>
    </node>
</map>

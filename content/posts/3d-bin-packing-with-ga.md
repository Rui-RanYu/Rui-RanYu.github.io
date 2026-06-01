---
title: "用遗传算法解决 3D 装箱问题"
date: 2026-06-01
draft: false
tags: ["Optimization", "Genetic Algorithm", "Python"]
categories: ["AI/ML"]
summary: "如何用遗传算法 (GA) + 贪心策略来解决现实世界中的三维装箱问题，提升集装箱空间利用率。"
ShowToc: true
TocOpen: true
---

## 问题背景

在供应链物流中，如何将不同尺寸的货物高效地装入集装箱，是一个经典的组合优化问题——**3D Bin Packing Problem (3D-BPP)**。

这个问题是 NP-hard 的，意味着当货物数量增加时，穷举所有可能的摆放方式是不现实的。

## 解决思路

我们采用 **遗传算法 (Genetic Algorithm)** + **贪心放置策略** 的混合方法：

1. **编码**：将装载顺序编码为染色体
2. **适应度函数**：以空间利用率 (VFR) 为优化目标
3. **贪心解码器**：对给定顺序，用贪心策略找到最佳放置位置
4. **进化**：通过选择、交叉、变异不断优化装载方案

### 核心代码示例

```python
@dataclass
class PackingConfig:
    """遗传算法配置参数"""
    population_size: int = 50
    generations: int = 100
    crossover_rate: float = 0.8
    mutation_rate: float = 0.15
    elite_ratio: float = 0.1
    vfr_target: float = 75.0  # 目标空间利用率 (%)
```

## 关键挑战

- **旋转约束**：某些货物只能以特定方向放置
- **重量约束**：集装箱有最大承重限制
- **稳定性**：上层货物需要有足够的支撑面

## 效果

在实际业务场景中，该方法将平均 VFR 从 **~55%** 提升到 **~78%**，显著减少了运输成本。

---

*这是我在 P&G 供应链优化项目中的实践总结。如有问题，欢迎交流！*

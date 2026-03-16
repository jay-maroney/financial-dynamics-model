# Financial Dynamics ODE Model

A mathematical model analyzing personal finance dynamics for a recent college graduate using systems of ordinary differential equations.

## Paper

Full paper available here:

[Download the paper](financial_dynamics_ode_model.pdf)

## Model

Three compartments:

C(t) — cash  
A(t) — invested assets  
D(t) — debt

System equations:

C' = I(t) + fA − (a+b+c+d)C  
A' = cC + (e−f)A  
D' = gD − dC  

## Mathematical Analysis

- Existence and uniqueness of solutions
- Forward invariance of nonnegative region
- Jacobian linearization
- Eigenvalue stability analysis

## Results

Simulations compare financial strategies:

1. Low saving / slow debt repayment
2. Balanced saving strategy
3. Aggressive early repayment

## Simulation Results

### Asset Growth

![Assets](figures/assets_comparison.fig)

### Total Wealth

![Wealth](figures/wealth_comparison.fig)

### Cash Dynamics

![Cash](figures/cash_comparison.fig)

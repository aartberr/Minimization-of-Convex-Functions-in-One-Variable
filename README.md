# Optimization Techniques in MATLAB

This project was created as part of a course assignment for the **Optimization techbniques** class at **ECE, AUTH University**.

This project implements and compares various optimization techniques to minimize convex functions using MATLAB. It explores the **Bisection Method**, **Golden Section Search**, **Fibonacci Method**, and a **Modified Bisection Method with Derivatives**.

## **Methods Implemented**
1. **Bisection Method**: Evaluates convergence behavior with respect to search interval (`l`) and accuracy (`ε`).
2. **Golden Section Search**: Examines how different values of `l` impact the results.
3. **Fibonacci Method**: Similar to Golden Section but based on Fibonacci method.
4. **Bisection Method with Derivatives**: Uses the function's derivative to refine the search.

## **Files**
- **assignment1.m**: Main script that:
  - Implements all four optimization methods on three convex functions.
  - Plots results showing method performance.
  - Evaluates results for different search parameters (`l`, `ε`).
- **bisectormethod.m**: Implements the standard bisection method.
- **xrysostomeasmethod.m**: Implements the golden section search method.
- **fibonaccimethod.m**: Implements the Fibonacci search method.
- **bisectormethoddif.m**: Implements the bisection method using derivatives.

## **Functions Used**
The optimization methods are applied to the following convex functions:
1. **f₁(x) = (x - 1)³ + (x - 4)² cos(x)**
2. **f₂(x) = e^(-2x) + (x - 2)²**
3. **f₃(x) = x² ln(0.5x) + sin(0.2x)²**

These functions can be adjusted as needed.

## **Usage**
1. Run `assignment1.m` to execute all optimization methods and generate plots.
2. Modify `l` and `ε` to analyze their effects on convergence.
3. Change the convex functions inside `assignment1.m` for further experimentation.

## **Future Work**
- Extend to **higher-dimensional** optimization problems.
- Compare results with modern optimization libraries.

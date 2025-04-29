# orthogonality_constrained_pls
PLS regression with orthogonality constraint to known interferents.

This repository contains a MATLAB implementation of **Orthogonality-Constrained Partial Least Squares (OC-PLS)** regression. The method enhances selectivity by forcing the latent variable space to be orthogonal to known interfering signals, making it particularly useful in chemometric modeling of vibrational spectroscopy data.

---

## 📘 Citation

If you use this code in your research, please cite:

**P. B. Skou, E. Hosseini, J. B. Ghasemi, A. K. Smilde, and C. E. Eskildsen**  
*Orthogonality constrained inverse regression to improve model selectivity and analyte predictions from vibrational spectroscopic measurements*  
**Analytica Chimica Acta**, 2021, 1185:339073  
https://doi.org/10.1016/j.aca.2021.339073

---

## 🔧 Usage

**Function call:**

```matlab
[b, W, P, q, T] = pls_cons(X, y, LV, Sk);

Inputs:
X — n × p matrix of mean-centered predictors
y — n × 1 mean-centered response vector
LV — number of latent variables to extract
Sk — p × k matrix of known interfering signals

Outputs:
b — regression vector
W, P, q, T — standard PLS model matrices
---

**## 📄 License**
This project is licensed under the
Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)
See LICENSE or https://creativecommons.org/licenses/by-nc/4.0
---

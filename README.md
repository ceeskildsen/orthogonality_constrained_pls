# orthogonality_constrained_pls

This repository contains a MATLAB implementation of Orthogonality-Constrained Partial Least Squares regression. The method enhances selectivity by forcing the latent-variable space to be orthogonal to known interfering signals, making it particularly useful in chemometric modeling of vibrational spectroscopy data.

## Citation
P. B. Skou, E. Hosseini, J. B. Ghasemi, A. K. Smilde and C. E. Eskildsen (2021) Orthogonality constrained inverse regression to improve model selectivity and analyte predictions from vibrational spectroscopic measurements, Analytica Chimica Acta 1185:339073, https://doi.org/10.1016/j.aca.2021.339073

## Usage
Call the function as follows in MATLAB:
```matlab
[b, W, P, q, T] = pls_cons(X, y, LV, Sk)
```

## Inputs
X is an n×p matrix of mean-centered predictor data
y is an n×1 vector of mean-centered response values
LV is the number of latent variables to extract
Sk is a p×k matrix of known interfering signals

## Outputs
b is the regression vector
W, P, q and T are the standard PLS model matrices (weights, loadings and scores)

## License
Creative Commons Attribution-NonCommercial 4.0 International

## Author
Carl Emil Aae Eskildsen
Imperial College London
c.eskildsen@imperial.ac.uk

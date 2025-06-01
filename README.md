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
-`X` is an n×p matrix of mean-centered predictor data  
-`y` is an n×1 vector of mean-centered response values  
-`LV` is the number of latent variables to extract  
-`Sk` is a p×k matrix of known interfering signals  

## Outputs
-`b` is the regression vector  
-`W`, `P`, `q` and `T` are the standard PLS model matrices (weights, loadings and scores)  

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell   
copies of the Software, and to permit persons to whom the Software is        
furnished to do so, subject to the following conditions:                     

The above copyright notice and this permission notice shall be included in   
all copies or substantial portions of the Software.                            

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR   
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,     
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER       
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  
SOFTWARE.

## Author
Carl Emil Aae Eskildsen
Imperial College London
c.eskildsen@imperial.ac.uk

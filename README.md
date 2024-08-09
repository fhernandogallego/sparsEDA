# SparseEDA
Authors: F. Hernando-Gallego, D. Luengo, A. Artés-Rodríguez

## Overview

SparseEDA is a sophisticated MATLAB implementation for the feature extraction of Galvanic Skin Responses (GSR) using Nonnegative Sparse Deconvolution. This method, developed as part of my thesis, addresses the challenges of decomposing GSR signals into their tonic and phasic components, offering a fast, efficient, and interpretable solution for the analysis of electrodermal activity (EDA). The SparseEDA algorithm is particularly valuable for applications requiring real-time or large-scale GSR signal processing, such as stress detection in wearable technology.

## Table of Contents

1. [Introduction](#introduction)
2. [Methodology](#methodology)
3. [Results](#results)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Conclusion](#conclusion)
7. [References](#references)
8. [License](#license)

## Introduction

Galvanic Skin Response (GSR) refers to changes in the electrical properties of the skin in response to sweat secretion, driven by the Sympathetic Nervous System (SNS). Accurately decomposing GSR signals into their constituent tonic (Skin Conductance Level - SCL) and phasic (Skin Conductance Response - SCR) components is critical for understanding the underlying physiological responses. Traditional methods often fail to achieve the required sparsity and non-negativity, leading to poor interpretability. SparseEDA overcomes these challenges by utilizing nonnegative sparse deconvolution, ensuring that the extracted features are both physiologically interpretable and computationally efficient.

## Methodology

The core of the SparseEDA algorithm lies in its ability to handle and exploit the sparsity in GSR signals. The method is composed of several key steps:

1. **Sparse Representation**: The GSR signal is decomposed into sparse drivers using a nonnegative sparse deconvolution approach. This ensures that the extracted SCR components are physiologically meaningful, representing actual sympathetic nervous system activations.
  
2. **Multi-scale Analysis**: To account for varying time scales of SCR events, a multi-scale analysis is performed using an overcomplete dictionary. This allows the algorithm to adapt to different SCR durations, providing a more accurate decomposition.

3. **Joint SCL and SCR Estimation**: Unlike sequential approaches, SparseEDA jointly estimates the SCL and SCR components, minimizing the risk of underestimating the SCR contributions.

4. **Post-processing**: A post-processing stage further refines the driver signal by eliminating non-physiological artifacts, enhancing the sparsity and interpretability of the SCR components.

## Results

The SparseEDA algorithm has been validated using a dataset of 100 GSR signals from different subjects, with sampling rates ranging from 4 Hz to 128 Hz. The following are some key results:

- **Accuracy**: SparseEDA achieves a mean squared error (MSE) of -48.50 dB, demonstrating its effectiveness in accurately decomposing GSR signals.
- **Computation Time**: The algorithm is highly efficient, with computation times up to 111 times faster than traditional methods like CDA Ledalab.
- **Sparsity**: The algorithm attains an average sparsity of 0.287%, significantly improving the interpretability of the SCR component.

### Graphical Results

#### Example of Signal Decomposition

![Signal Decomposition](https://github.com/fhernandogallego/sparsEDA/blob/master/herna2-2780252-large.gif)

*Figure 1: Decomposition of a GSR signal using SparseEDA. The top graph shows the original GSR signal (blue) and the estimated SCL component (red). The bottom graph displays the sparse driver (black) and the corresponding SCR waveform (green).*

#### Performance Comparison

![Performance Comparison](https://github.com/fhernandogallego/sparsEDA/blob/master/herna3-2780252-large.gif)

*Figure 2: Comparison of SparseEDA with other methods (CDA Ledalab and cvxEDA). SparseEDA provides a more interpretable and sparse decomposition.*

## Installation

To use SparseEDA, clone this repository and ensure you have MATLAB 2016b or later installed.

```bash
git clone https://github.com/fhernandogallego/sparsEDA.git 
```

## Usage

1. Place your GSR data in MATLAB-readable format in the `/data` directory.
2. Run the main MATLAB script:

```bash
git clone https://github.com/fhernandogallego/sparsEDA.git 
```

## Conclusion

SparseEDA offers a powerful tool for the decomposition and analysis of GSR signals, particularly in high-dimensional and real-time contexts. Its ability to handle sparsity effectively ensures that the results are not only accurate but also highly interpretable, making it an ideal choice for research and practical applications in physiological signal processing.

## References

For a detailed explanation of the methodology and results, please refer to the publication: [Feature Extraction of Galvanic Skin Responses by Nonnegative Sparse Deconvolution](https://doi.org/10.1109/JBHI.2017.2780252).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

Con este código, todo el contenido desde "Usage" hasta "License" estará correctamente formateado y el bloque de código en la sección "Usage" se mostrará tal como deseas.



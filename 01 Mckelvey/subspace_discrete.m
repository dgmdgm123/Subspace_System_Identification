clear all; close all; clc
% =========================================================================
% ============================= our data ==================================
% Frequency response of system is placed in Gjw
% Frequency variable is placed in ww
 P=[              
 -6.20000E+00  1.24000E-03  1.99000E+00 -1.60000E-01 -2.23000E+00 -1.22000E+00
 -1.43000E+00  7.60000E-01 -6.65000E-01 -9.53000E-02 -5.03000E-01 -5.59000E-01
 -7.84000E-01 -7.67000E-01 -1.01000E+00 -8.23000E-01 -1.35000E+00 -8.87000E-01
 -1.43000E+00 -6.15000E-01 -1.33000E+00 -7.00000E-01 -1.50000E+00 -5.47000E-01
 -1.30000E+00 -5.41000E-01 -1.41000E+00 -6.01000E-01 -1.43000E+00 -6.94000E-01
 -1.55000E+00 -7.47000E-01 -1.61000E+00 -9.47000E-01 -1.66000E+00 -9.38000E-01
 -1.72000E+00 -9.83000E-01 -1.77000E+00 -1.01000E+00 -1.84000E+00 -1.19000E+00
 -1.89000E+00 -1.20000E+00 -1.99000E+00 -1.28000E+00 -2.07000E+00 -1.32000E+00
 -2.17000E+00 -1.41000E+00 -2.26000E+00 -1.47000E+00 -2.40000E+00 -1.55000E+00
 -2.48000E+00 -1.58000E+00 -2.57000E+00 -1.68000E+00 -2.72000E+00 -1.67000E+00
 -2.81000E+00 -1.76000E+00 -2.97000E+00 -1.88000E+00 -3.09000E+00 -1.84000E+00
 -3.15000E+00 -1.90000E+00 -3.24000E+00 -2.02000E+00 -3.36000E+00 -2.08000E+00
 -3.49000E+00 -2.22000E+00 -3.61000E+00 -2.34000E+00 -3.73000E+00 -2.42000E+00
 -3.84000E+00 -2.54000E+00 -4.06000E+00 -2.68000E+00 -4.17000E+00 -2.77000E+00
 -4.34000E+00 -2.95000E+00 -4.62000E+00 -3.09000E+00 -4.88000E+00 -3.15000E+00
 -5.08000E+00 -3.16000E+00 -5.21000E+00 -3.29000E+00 -5.41000E+00 -3.40000E+00
 -5.61000E+00 -3.54000E+00 -5.89000E+00 -3.65000E+00 -6.12000E+00 -3.76000E+00
 -6.34000E+00 -3.88000E+00 -6.60000E+00 -4.03000E+00 -6.84000E+00 -4.11000E+00
 -7.07000E+00 -4.29000E+00 -7.42000E+00 -4.41000E+00 -7.67000E+00 -4.50000E+00
 -7.97000E+00 -4.62000E+00 -8.28000E+00 -4.74000E+00 -8.56000E+00 -4.86000E+00
 -8.87000E+00 -5.00000E+00 -9.24000E+00 -5.12000E+00 -9.58000E+00 -5.25000E+00
 -9.91000E+00 -5.34000E+00 -1.02000E+01 -5.48000E+00 -1.06000E+01 -5.60000E+00
 -1.09000E+01 -5.71000E+00 -1.13000E+01 -5.87000E+00 -1.17000E+01 -5.99000E+00
 -1.21000E+01 -6.13000E+00 -1.25000E+01 -6.25000E+00 -1.30000E+01 -6.37000E+00
 -1.34000E+01 -6.47000E+00 -1.39000E+01 -6.57000E+00 -1.43000E+01 -6.68000E+00
 -1.48000E+01 -6.74000E+00 -1.53000E+01 -6.82000E+00 -1.58000E+01 -6.94000E+00
 -1.62000E+01 -7.01000E+00 -1.68000E+01 -7.07000E+00 -1.72000E+01 -7.13000E+00
 -1.76000E+01 -7.23000E+00 -1.82000E+01 -7.34000E+00 -1.87000E+01 -7.37000E+00
 -1.92000E+01 -7.36000E+00 -1.97000E+01 -7.42000E+00 -2.02000E+01 -7.52000E+00
 -2.07000E+01 -7.60000E+00 -2.12000E+01 -7.66000E+00 -2.18000E+01 -7.72000E+00
 -2.23000E+01 -7.76000E+00 -2.28000E+01 -7.80000E+00 -2.33000E+01 -7.94000E+00
 -2.39000E+01 -8.05000E+00 -2.45000E+01 -8.04000E+00 -2.50000E+01 -8.19000E+00
 -2.55000E+01 -8.30000E+00 -2.61000E+01 -8.34000E+00 -2.67000E+01 -8.45000E+00
 -2.73000E+01 -8.60000E+00 -2.79000E+01 -8.70000E+00 -2.85000E+01 -8.80000E+00
 -2.91000E+01 -8.94000E+00 -2.98000E+01 -9.08000E+00 -3.04000E+01 -9.18000E+00
 -3.11000E+01 -9.36000E+00 -3.18000E+01 -9.47000E+00 -3.25000E+01 -9.69000E+00
 -3.32000E+01 -9.81000E+00 -3.39000E+01 -9.97000E+00 -3.47000E+01 -1.02000E+01
 -3.55000E+01 -1.03000E+01 -3.63000E+01 -1.06000E+01 -3.71000E+01 -1.08000E+01
 -3.80000E+01 -1.10000E+01 -3.88000E+01 -1.12000E+01 -3.98000E+01 -1.14000E+01
 -4.08000E+01 -1.16000E+01 -4.18000E+01 -1.18000E+01 -4.28000E+01 -1.21000E+01
 -4.39000E+01 -1.23000E+01 -4.51000E+01 -1.25000E+01 -4.62000E+01 -1.27000E+01
 -4.75000E+01 -1.28000E+01 -4.87000E+01 -1.28000E+01 -5.00000E+01 -1.29000E+01
 -5.13000E+01 -1.29000E+01 -5.25000E+01 -1.28000E+01 -5.36000E+01 -1.27000E+01
 -5.48000E+01 -1.27000E+01 -5.59000E+01 -1.28000E+01 -5.70000E+01 -1.31000E+01
 -5.84000E+01 -1.35000E+01 -5.99000E+01 -1.37000E+01 -6.15000E+01 -1.39000E+01
 -6.31000E+01 -1.41000E+01 -6.48000E+01 -1.41000E+01 -6.67000E+01 -1.42000E+01
 -6.86000E+01 -1.42000E+01 -7.03000E+01 -1.40000E+01 -7.22000E+01 -1.40000E+01
 -7.42000E+01 -1.37000E+01 -7.60000E+01 -1.34000E+01 -7.79000E+01 -1.33000E+01
 -7.99000E+01 -1.30000E+01 -8.21000E+01 -1.28000E+01 -8.42000E+01 -1.24000E+01
 -8.65000E+01 -1.20000E+01 -8.87000E+01 -1.16000E+01 -9.10000E+01 -1.11000E+01
 -9.34000E+01 -1.06000E+01 -9.59000E+01 -9.96000E+00 -9.85000E+01 -9.17000E+00
 -1.01000E+02 -8.44000E+00 -1.04000E+02 -7.33000E+00 -1.06000E+02 -6.36000E+00
 -1.09000E+02 -5.39000E+00 -1.12000E+02 -4.68000E+00 -1.14000E+02 -3.76000E+00
 -1.17000E+02 -3.18000E+00 -1.20000E+02 -3.14000E+00 -1.25000E+02 -2.98000E+00
 -1.30000E+02 -2.14000E+00 -1.35000E+02 -7.91000E-01 -1.41000E+02  8.16000E-01
 -1.48000E+02  3.42000E+00 -1.55000E+02  6.87000E+00 -1.63000E+02  1.13000E+01
 -1.70000E+02  1.67000E+01 -1.78000E+02  2.27000E+01 -1.85000E+02  2.96000E+01
 -1.94000E+02  3.74000E+01 -2.04000E+02  4.70000E+01 -2.15000E+02  5.93000E+01
 -2.25000E+02  7.58000E+01 -2.35000E+02  9.58000E+01 -2.44000E+02  1.21000E+02
 -2.48000E+02  1.51000E+02 -2.49000E+02  1.86000E+02 -2.42000E+02  2.30000E+02
 -2.19000E+02  2.79000E+02 -1.74000E+02  3.24000E+02 -1.10000E+02  3.53000E+02
 -3.79000E+01  3.56000E+02  2.86000E+01  3.30000E+02  7.28000E+01  2.86000E+02
  9.59000E+01  2.41000E+02  1.03000E+02  1.99000E+02  1.00000E+02  1.70000E+02
  9.75000E+01  1.46000E+02  9.32000E+01  1.27000E+02  8.73000E+01  1.12000E+02
  8.32000E+01  1.02000E+02  8.23000E+01  9.14000E+01  7.77000E+01  8.16000E+01
  7.58000E+01  7.38000E+01  7.22000E+01  6.71000E+01  7.10000E+01  6.21000E+01
  6.99000E+01  5.62000E+01  6.72000E+01  4.61000E+01  6.20000E+01  5.27000E+01
  6.75000E+01  4.86000E+01  6.94000E+01  4.50000E+01  7.12000E+01  4.11000E+01
  7.36000E+01  3.79000E+01  7.84000E+01  3.68000E+01  8.35000E+01  3.10000E+01
  8.80000E+01  2.61000E+01  9.29000E+01  2.08000E+01  9.77000E+01  1.44000E+01
  1.03000E+02  6.66000E+00  1.05000E+02 -1.92000E+00  1.07000E+02 -9.87000E+00
  1.06000E+02 -1.57000E+01  1.06000E+02 -1.97000E+01  1.08000E+02 -1.99000E+01
  1.13000E+02 -2.06000E+01  1.20000E+02 -2.22000E+01  1.30000E+02 -2.51000E+01
  1.40000E+02 -2.98000E+01  1.52000E+02 -3.65000E+01  1.64000E+02 -4.41000E+01
  1.78000E+02 -5.47000E+01  1.90000E+02 -6.81000E+01  2.04000E+02 -8.10000E+01
  2.16000E+02 -9.75000E+01  2.31000E+02 -1.15000E+02  2.45000E+02 -1.37000E+02
  2.58000E+02 -1.60000E+02  2.72000E+02 -1.86000E+02  2.85000E+02 -2.16000E+02
  2.95000E+02 -2.50000E+02  3.06000E+02 -2.85000E+02  3.14000E+02 -3.24000E+02
  3.22000E+02 -3.67000E+02  3.29000E+02 -4.15000E+02  3.35000E+02 -4.71000E+02
  3.35000E+02 -5.31000E+02  3.29000E+02 -6.02000E+02  3.18000E+02 -6.82000E+02
  2.89000E+02 -7.67000E+02  2.47000E+02 -8.60000E+02  1.90000E+02 -9.53000E+02
  1.20000E+02 -1.06000E+03  2.90000E+01 -1.16000E+03 -7.60000E+01 -1.26000E+03
 -2.09000E+02 -1.37000E+03 -3.66000E+02 -1.47000E+03 -5.43000E+02 -1.57000E+03
 -7.46000E+02 -1.67000E+03 -1.00000E+03 -1.79000E+03 -1.33000E+03 -1.91000E+03
 -1.73000E+03 -2.01000E+03 -2.28000E+03 -2.08000E+03 -3.04000E+03 -2.05000E+03
 -4.08000E+03 -1.72000E+03 -5.35000E+03 -5.88000E+02 -5.79000E+03  1.87000E+03
 -4.03000E+03  3.72000E+03 -2.37000E+03  3.87000E+03 -1.35000E+03  3.68000E+03
 -5.47000E+02  3.38000E+03  6.75000E+01  2.96000E+03  4.73000E+02  2.45000E+03
  6.82000E+02  1.95000E+03  7.10000E+02  1.50000E+03  6.39000E+02  1.17000E+03
  5.26000E+02  9.53000E+02  4.43000E+02  8.17000E+02  3.91000E+02  7.15000E+02
  3.44000E+02  6.11000E+02  2.95000E+02  5.29000E+02  2.53000E+02  4.57000E+02
  2.10000E+02  3.98000E+02  1.78000E+02  3.51000E+02  1.47000E+02  3.01000E+02
  1.22000E+02  2.60000E+02  1.00000E+02  2.18000E+02  8.04000E+01  1.78000E+02
  6.22000E+01  1.37000E+02  5.24000E+01  9.52000E+01  3.83000E+01  5.06000E+01
  2.91000E+01  7.29000E+00  2.50000E+01 -3.85000E+01  2.07000E+01 -8.58000E+01
  2.30000E+01 -1.34000E+02  2.62000E+01 -1.89000E+02  3.34000E+01 -2.42000E+02
  4.23000E+01 -2.98000E+02  5.76000E+01 -3.50000E+02  8.12000E+01 -3.97000E+02
  1.08000E+02 -4.39000E+02  1.43000E+02 -4.79000E+02  1.86000E+02 -5.01000E+02
  2.30000E+02 -5.20000E+02  2.90000E+02 -5.26000E+02  3.52000E+02 -5.20000E+02
  4.15000E+02 -5.06000E+02  4.77000E+02 -4.84000E+02  5.39000E+02 -4.59000E+02
  5.95000E+02 -4.30000E+02  6.43000E+02 -3.91000E+02  6.80000E+02 -3.47000E+02
  7.15000E+02 -3.09000E+02  7.43000E+02 -2.68000E+02  7.70000E+02 -2.27000E+02
  7.87000E+02 -1.85000E+02  8.04000E+02 -1.51000E+02  8.18000E+02 -1.14000E+02
  8.28000E+02 -8.02000E+01  8.38000E+02 -5.09000E+01  8.49000E+02 -2.96000E+01
  8.59000E+02 -4.36000E-01  8.64000E+02  2.17000E+01  8.76000E+02  4.22000E+01
  8.80000E+02  6.24000E+01  8.90000E+02  7.43000E+01  8.97000E+02  8.92000E+01
  9.03000E+02  1.05000E+02  9.14000E+02  1.17000E+02  9.22000E+02  1.29000E+02
  9.30000E+02  1.36000E+02  9.40000E+02  1.45000E+02  9.46000E+02  1.51000E+02
  9.56000E+02  1.58000E+02  9.64000E+02  1.65000E+02  9.73000E+02  1.69000E+02
  9.80000E+02  1.72000E+02  9.88000E+02  1.78000E+02  9.94000E+02  1.79000E+02
  9.99000E+02  1.81000E+02  1.00000E+03  1.83000E+02  1.01000E+03  1.85000E+02
  1.01000E+03  1.87000E+02  1.01000E+03  1.88000E+02  1.01000E+03  1.89000E+02
  1.01000E+03  1.91000E+02  1.00000E+03  1.94000E+02  1.00000E+03  1.98000E+02
  1.00000E+03  1.99000E+02  1.00000E+03  2.00000E+02  1.00000E+03  1.99000E+02
  9.96000E+02  1.97000E+02  9.91000E+02  1.94000E+02  9.86000E+02  1.90000E+02
  9.77000E+02  1.86000E+02  9.69000E+02  1.83000E+02  9.59000E+02  1.81000E+02
  9.49000E+02  1.79000E+02  9.39000E+02  1.77000E+02  9.29000E+02  1.75000E+02
  9.17000E+02  1.73000E+02  9.06000E+02  1.72000E+02  8.96000E+02  1.73000E+02
  8.86000E+02  1.73000E+02  8.77000E+02  1.74000E+02  8.69000E+02  1.75000E+02
  8.61000E+02  1.76000E+02  8.54000E+02  1.75000E+02  8.48000E+02  1.76000E+02
  8.40000E+02  1.76000E+02  8.35000E+02  1.76000E+02  8.29000E+02  1.75000E+02
  8.24000E+02  1.75000E+02  8.19000E+02  1.75000E+02  8.13000E+02  1.74000E+02
  8.09000E+02  1.75000E+02  8.04000E+02  1.76000E+02  8.00000E+02  1.78000E+02
  7.96000E+02  1.79000E+02  7.94000E+02  1.82000E+02  7.92000E+02  1.83000E+02
  7.91000E+02  1.86000E+02  7.90000E+02  1.89000E+02  7.91000E+02  1.92000E+02
  7.92000E+02  1.94000E+02  7.93000E+02  1.96000E+02  7.96000E+02  2.00000E+02
  7.99000E+02  2.02000E+02  8.02000E+02  2.05000E+02  8.07000E+02  2.08000E+02
  8.12000E+02  2.11000E+02  8.18000E+02  2.14000E+02  8.23000E+02  2.17000E+02
  8.30000E+02  2.20000E+02  8.39000E+02  2.24000E+02  8.47000E+02  2.27000E+02
  8.56000E+02  2.31000E+02  8.66000E+02  2.35000E+02  8.78000E+02  2.38000E+02
  8.89000E+02  2.41000E+02  9.03000E+02  2.46000E+02  9.17000E+02  2.49000E+02
  9.35000E+02  2.52000E+02  9.52000E+02  2.55000E+02  9.71000E+02  2.59000E+02
  9.92000E+02  2.60000E+02  1.02000E+03  2.63000E+02  1.04000E+03  2.64000E+02
  1.07000E+03  2.64000E+02  1.10000E+03  2.64000E+02  1.13000E+03  2.63000E+02
  1.16000E+03  2.62000E+02  1.20000E+03  2.60000E+02  1.24000E+03  2.59000E+02
  1.29000E+03  2.56000E+02  1.35000E+03  2.53000E+02  1.41000E+03  2.49000E+02
  1.49000E+03  2.42000E+02  1.59000E+03  2.28000E+02  1.70000E+03  2.07000E+02
  1.84000E+03  1.74000E+02  2.02000E+03  1.19000E+02  2.25000E+03  2.12000E+01
  2.53000E+03 -1.45000E+02  2.89000E+03 -4.46000E+02  3.30000E+03 -9.98000E+02
  3.59000E+03 -2.00000E+03  3.18000E+03 -3.56000E+03  1.35000E+03 -4.65000E+03
 -5.53000E+02 -3.92000E+03 -1.15000E+03 -2.66000E+03 -1.11000E+03 -1.84000E+03
 -9.48000E+02 -1.37000E+03 -8.01000E+02 -1.08000E+03 -6.80000E+02 -8.90000E+02
 -5.84000E+02 -7.50000E+02 -5.06000E+02 -6.48000E+02 -4.44000E+02 -5.67000E+02
 -3.93000E+02 -5.02000E+02 -3.50000E+02 -4.48000E+02 -3.14000E+02 -4.02000E+02
 -2.83000E+02 -3.62000E+02 -2.58000E+02 -3.28000E+02 -2.37000E+02 -2.97000E+02
 -2.19000E+02 -2.69000E+02 -2.06000E+02 -2.42000E+02 -1.95000E+02 -2.16000E+02
 -1.85000E+02 -1.90000E+02 -1.77000E+02 -1.62000E+02 -1.67000E+02 -1.32000E+02
 -1.56000E+02 -1.03000E+02 -1.41000E+02 -7.50000E+01 -1.23000E+02 -5.04000E+01
 -1.06000E+02 -2.78000E+01 -8.80000E+01 -9.20000E+00 -7.04000E+01  6.83000E+00
 -5.35000E+01  2.06000E+01 -3.82000E+01  3.35000E+01 -2.34000E+01  4.41000E+01
 -9.64000E+00  5.41000E+01  3.25000E+00  6.17000E+01  1.45000E+01  6.82000E+01
  2.49000E+01  7.48000E+01  3.44000E+01  8.02000E+01  4.19000E+01  8.40000E+01
  4.80000E+01  8.82000E+01  5.14000E+01  9.22000E+01  5.38000E+01  9.64000E+01
  5.39000E+01  1.01000E+02  5.08000E+01  1.07000E+02  4.69000E+01  1.15000E+02
  4.01000E+01  1.25000E+02  3.08000E+01  1.40000E+02  1.84000E+01  1.61000E+02
  5.19000E+00  1.90000E+02 -1.00000E+01  2.33000E+02 -1.88000E+01  2.97000E+02
 -9.91000E+00  3.89000E+02  5.09000E+01  5.14000E+02  2.22000E+02  6.31000E+02
  4.87000E+02  5.96000E+02  6.30000E+02  3.89000E+02  6.19000E+02  2.10000E+02
  5.62000E+02  1.11000E+02  5.10000E+02  5.45000E+01  4.64000E+02  2.07000E+01
  4.25000E+02  2.16000E+00  3.95000E+02 -5.64000E+00  3.71000E+02 -1.08000E+01
  3.51000E+02 -1.22000E+01  3.33000E+02 -9.94000E+00  3.23000E+02 -9.89000E-01
  3.19000E+02  8.02000E+00  3.27000E+02  1.46000E+01  3.37000E+02  1.05000E+01
  3.38000E+02 -2.81000E+00  3.35000E+02 -1.10000E+01  3.27000E+02 -1.53000E+01
  3.25000E+02 -1.54000E+01  3.23000E+02 -1.56000E+01  3.23000E+02 -1.44000E+01
  3.25000E+02 -1.36000E+01  3.25000E+02 -1.51000E+01  3.26000E+02 -1.44000E+01
  3.28000E+02 -1.48000E+01  3.28000E+02 -1.48000E+01  3.31000E+02 -1.50000E+01
  3.32000E+02 -1.49000E+01  3.34000E+02 -1.35000E+01  3.35000E+02 -1.20000E+01
  3.37000E+02 -1.22000E+01  3.41000E+02 -1.17000E+01  3.44000E+02 -1.28000E+01
  3.45000E+02 -1.52000E+01  3.46000E+02 -1.79000E+01  3.46000E+02 -2.09000E+01
  3.42000E+02 -2.40000E+01  3.38000E+02 -2.72000E+01  3.30000E+02 -3.01000E+01
  3.21000E+02 -3.14000E+01  3.08000E+02 -3.00000E+01  2.93000E+02 -2.45000E+01
  2.77000E+02 -9.92000E+00  2.66000E+02  1.41000E+01  2.70000E+02  4.13000E+01
  2.83000E+02  6.31000E+01  2.99000E+02  7.67000E+01  3.17000E+02  8.41000E+01
  3.35000E+02  8.65000E+01  3.50000E+02  8.43000E+01  3.63000E+02  7.92000E+01
  3.72000E+02  7.11000E+01  3.78000E+02  6.37000E+01  3.81000E+02  5.66000E+01
  3.82000E+02  5.09000E+01  3.83000E+02  4.70000E+01  3.83000E+02  4.39000E+01
  3.84000E+02  4.20000E+01  3.85000E+02  4.05000E+01  3.86000E+02  3.76000E+01
  3.86000E+02  3.70000E+01  3.88000E+02  3.72000E+01  3.90000E+02  3.66000E+01
  3.92000E+02  3.59000E+01  3.93000E+02  3.52000E+01  3.97000E+02  3.51000E+01
  4.00000E+02  3.36000E+01  4.02000E+02  3.38000E+01  4.05000E+02  3.20000E+01
  4.07000E+02  3.19000E+01  4.10000E+02  3.19000E+01  4.13000E+02  2.96000E+01
  4.15000E+02  2.91000E+01  4.18000E+02  2.69000E+01  4.20000E+02  2.57000E+01
  4.22000E+02  2.45000E+01  4.24000E+02  2.29000E+01  4.25000E+02  2.20000E+01
  4.28000E+02  2.14000E+01  4.29000E+02  1.96000E+01  4.29000E+02  1.85000E+01
  4.31000E+02  1.72000E+01  4.33000E+02  1.54000E+01  4.33000E+02  1.31000E+01
  4.33000E+02  1.13000E+01  4.32000E+02  1.01000E+01  4.32000E+02  7.83000E+00
  4.29000E+02  7.37000E+00  4.29000E+02  5.82000E+00  4.26000E+02  4.92000E+00
  4.24000E+02  4.49000E+00  4.21000E+02  4.44000E+00  4.18000E+02  6.04000E+00
  4.17000E+02  6.52000E+00  4.14000E+02  7.60000E+00  4.12000E+02  8.55000E+00
  4.10000E+02  1.09000E+01  4.08000E+02  1.23000E+01  4.06000E+02  1.55000E+01
  4.05000E+02  1.84000E+01  4.04000E+02  2.09000E+01  4.03000E+02  2.36000E+01
  4.03000E+02  2.68000E+01  4.04000E+02  3.03000E+01  4.04000E+02  3.21000E+01
  4.05000E+02  3.50000E+01  4.07000E+02  3.71000E+01  4.08000E+02  3.88000E+01
  4.11000E+02  4.11000E+01  4.16000E+02  4.41000E+01  4.18000E+02  4.12000E+01
  4.18000E+02  4.00000E+01  4.18000E+02  4.29000E+01  4.19000E+02  4.36000E+01
  4.22000E+02  4.51000E+01  4.24000E+02  4.66000E+01  4.26000E+02  4.74000E+01
  4.29000E+02  4.83000E+01  4.31000E+02  4.89000E+01  4.32000E+02  5.01000E+01
  4.36000E+02  5.23000E+01  4.38000E+02  5.44000E+01  4.41000E+02  5.70000E+01
  4.43000E+02  6.08000E+01  4.47000E+02  6.56000E+01  4.52000E+02  7.20000E+01
  4.58000E+02  8.01000E+01  4.69000E+02  8.91000E+01  4.83000E+02  9.92000E+01
  5.04000E+02  1.10000E+02  5.30000E+02  1.17000E+02  5.66000E+02  1.19000E+02
  6.09000E+02  1.08000E+02  6.54000E+02  8.36000E+01  6.95000E+02  4.23000E+01
  7.27000E+02 -1.81000E+01  7.38000E+02 -9.52000E+01  7.19000E+02 -1.77000E+02
  6.62000E+02 -2.47000E+02  5.88000E+02 -2.81000E+02  5.22000E+02 -2.80000E+02
  4.77000E+02 -2.65000E+02  4.46000E+02 -2.52000E+02  4.24000E+02 -2.41000E+02
  4.02000E+02 -2.31000E+02  3.84000E+02 -2.22000E+02  3.69000E+02 -2.14000E+02
  3.54000E+02 -2.07000E+02  3.41000E+02 -2.01000E+02  3.27000E+02 -1.95000E+02
  3.14000E+02 -1.89000E+02  3.02000E+02 -1.84000E+02  2.90000E+02 -1.77000E+02
  2.79000E+02 -1.70000E+02  2.67000E+02 -1.65000E+02  2.57000E+02 -1.57000E+02
  2.46000E+02 -1.51000E+02  2.36000E+02 -1.42000E+02  2.28000E+02 -1.33000E+02
  2.24000E+02 -1.24000E+02  2.20000E+02 -1.16000E+02  2.18000E+02 -1.11000E+02
  2.18000E+02 -1.07000E+02  2.15000E+02 -1.07000E+02  2.12000E+02 -1.08000E+02
  2.07000E+02 -1.11000E+02  2.00000E+02 -1.13000E+02  1.94000E+02 -1.15000E+02
  1.85000E+02 -1.18000E+02  1.76000E+02 -1.22000E+02  1.67000E+02 -1.26000E+02
  1.55000E+02 -1.27000E+02  1.45000E+02 -1.31000E+02  1.34000E+02 -1.38000E+02
  1.21000E+02 -1.48000E+02  1.02000E+02 -1.62000E+02  8.24000E+01 -1.79000E+02
  5.08000E+01 -2.01000E+02  8.56000E+00 -2.31000E+02 -5.64000E+01 -2.58000E+02
 -1.50000E+02 -2.86000E+02 -2.86000E+02 -2.99000E+02 -4.66000E+02 -2.51000E+02
 -6.61000E+02 -1.11000E+02 -8.12000E+02  1.30000E+02 -8.51000E+02  4.38000E+02
 -7.66000E+02  7.44000E+02 -5.84000E+02  9.92000E+02 -3.46000E+02  1.15000E+03
 -9.64000E+01  1.22000E+03  1.38000E+02  1.23000E+03  3.35000E+02  1.19000E+03
  4.98000E+02  1.12000E+03  6.32000E+02  1.03000E+03  7.40000E+02  9.31000E+02
  8.26000E+02  8.36000E+02  8.86000E+02  7.40000E+02  9.36000E+02  6.36000E+02
  9.64000E+02  5.47000E+02  9.82000E+02  4.40000E+02  9.79000E+02  3.41000E+02
  9.57000E+02  2.48000E+02  9.09000E+02  1.62000E+02  8.41000E+02  1.01000E+02
  7.45000E+02  7.63000E+01  6.57000E+02  1.09000E+02  6.18000E+02  1.85000E+02
  6.36000E+02  2.54000E+02  6.88000E+02  3.04000E+02  7.57000E+02  3.26000E+02
  8.20000E+02  3.19000E+02  8.75000E+02  3.01000E+02  9.27000E+02  2.75000E+02
  9.74000E+02  2.51000E+02  1.03000E+03  2.39000E+02  1.12000E+03  2.04000E+02
  1.21000E+03  1.52000E+02  1.32000E+03  6.21000E+01  1.41000E+03 -7.33000E+01
  1.46000E+03 -2.52000E+02  1.46000E+03 -4.75000E+02  1.38000E+03 -6.66000E+02
  1.27000E+03 -8.12000E+02  1.13000E+03 -9.16000E+02  1.01000E+03 -9.77000E+02
  8.81000E+02 -1.03000E+03  7.58000E+02 -1.07000E+03  6.35000E+02 -1.10000E+03
  5.21000E+02 -1.09000E+03  4.10000E+02 -1.09000E+03  3.11000E+02 -1.08000E+03
  2.05000E+02 -1.04000E+03  1.15000E+02 -9.98000E+02  3.00000E+01 -9.41000E+02
 -3.63000E+01 -8.79000E+02 -9.51000E+01 -8.11000E+02 -1.40000E+02 -7.24000E+02
 -1.56000E+02 -6.57000E+02 -1.81000E+02 -5.84000E+02 -1.74000E+02 -5.04000E+02
 -1.60000E+02 -4.32000E+02 -1.27000E+02 -3.72000E+02 -9.82000E+01 -3.27000E+02
 -6.30000E+01 -2.84000E+02 -2.21000E+01 -2.57000E+02  6.91000E+00 -2.30000E+02
  4.31000E+01 -2.15000E+02  7.52000E+01 -2.06000E+02  9.16000E+01 -2.02000E+02
  1.17000E+02 -2.05000E+02  1.36000E+02 -2.05000E+02  1.47000E+02 -2.12000E+02
  1.58000E+02 -2.15000E+02  1.60000E+02 -2.22000E+02  1.66000E+02 -2.31000E+02
  1.58000E+02 -2.38000E+02  1.45000E+02 -2.49000E+02  1.30000E+02 -2.47000E+02
  1.13000E+02 -2.38000E+02  1.02000E+02 -2.26000E+02  9.31000E+01 -2.07000E+02
  9.53000E+01 -1.96000E+02  9.40000E+01 -1.86000E+02  9.70000E+01 -1.81000E+02
  9.48000E+01 -1.74000E+02  9.43000E+01 -1.69000E+02  9.06000E+01 -1.61000E+02
  8.99000E+01 -1.56000E+02  9.10000E+01 -1.48000E+02  9.38000E+01 -1.41000E+02
  9.89000E+01 -1.35000E+02  1.04000E+02 -1.32000E+02  1.12000E+02 -1.37000E+02
  1.15000E+02 -1.45000E+02  1.19000E+02 -1.52000E+02  1.19000E+02 -1.64000E+02
  1.15000E+02 -1.80000E+02  1.07000E+02 -1.95000E+02  9.33000E+01 -2.13000E+02
  7.13000E+01 -2.29000E+02  4.67000E+01 -2.43000E+02  1.16000E+01 -2.53000E+02
 -2.63000E+01 -2.45000E+02 -6.81000E+01 -2.32000E+02 -1.04000E+02 -1.95000E+02
 -1.17000E+02 -1.40000E+02 -8.44000E+01 -8.28000E+01 -1.99000E+01 -6.07000E+01
  3.60000E+01 -9.48000E+01  5.52000E+01 -1.42000E+02  4.58000E+01 -1.83000E+02
  2.80000E+01 -2.08000E+02  1.22000E+01 -2.24000E+02 -4.29000E+00 -2.27000E+02
 -1.35000E+01 -2.27000E+02 -1.91000E+01 -2.25000E+02 -2.07000E+01 -2.27000E+02
 -2.09000E+01 -2.31000E+02 -2.48000E+01 -2.38000E+02 -3.24000E+01 -2.43000E+02
 -3.87000E+01 -2.48000E+02 -4.82000E+01 -2.50000E+02 -5.94000E+01 -2.49000E+02
 -7.25000E+01 -2.46000E+02 -8.32000E+01 -2.42000E+02 -9.56000E+01 -2.37000E+02
 -1.06000E+02 -2.26000E+02 -1.16000E+02 -2.17000E+02 -1.25000E+02 -2.03000E+02
 -1.35000E+02 -1.89000E+02 -1.43000E+02 -1.72000E+02 -1.47000E+02 -1.59000E+02
 -1.52000E+02 -1.41000E+02 -1.56000E+02 -1.28000E+02 -1.59000E+02 -1.11000E+02
 -1.63000E+02 -9.44000E+01 -1.63000E+02 -7.80000E+01 -1.65000E+02 -5.94000E+01
 -1.63000E+02 -4.16000E+01 -1.60000E+02 -2.51000E+01 -1.59000E+02 -1.05000E+01
 -1.56000E+02  5.70000E+00 -1.52000E+02  2.03000E+01 -1.49000E+02  3.51000E+01
 -1.46000E+02  4.85000E+01 -1.46000E+02  6.18000E+01 -1.48000E+02  7.70000E+01
 -1.49000E+02  9.66000E+01 -1.48000E+02  1.18000E+02 -1.47000E+02  1.40000E+02];

ww=2*pi*(0:0.5:400); ff=ww/(2*pi);
j=sqrt(-1); 
B=P';
B=B(:);
B_Real=B(1:2:length(B));
B_image=B(2:2:length(B));
B_Complex=B_Real+j*B_image;  %if acceleratoin is measured (FRF system az inja shuru mikonam man)
Gjw=B_Complex./-(ww.').^2;   %if displacement is measured (chon acc andaze giri shode vali man lazem nadaram)
% =========================================================================
% transform continuous data to discrete using bilinear tansfrmation
% !!!!!!!!!!!!!!!! see help bilinear
select_w=21; % chon ferekans payin javabesh bade arc tan dar nazdike sefr javabesh khub nis.
T=5/max(ww);
wwd=2*atan(T*ww(select_w:end)/2);
wwd=wwd';
wwd;
Gzks=Gjw(select_w:end);
% Gzks(1,1)=500+500j;      % because Gjw(1,1) is inf         
% =========================================================================
m=1;                 % number of input
p=1;                 % number of output   
[M,MM]=size(Gzks);    % number of data
j=sqrt(-1);           
q=100;        % q should be greater than system order (Eq 6)
n=22;                % order of system

% ===================== step 1: compute matrix G  =========================
% **************  according to equation (47) or (10) in conf paper*********
% G
for i=1:q
    for k=1:M
    Y_qp_mM(p*(i-1)+1:p*i,m*(k-1)+1:m*k)=exp(j*(i-1)*wwd(k,1))*Gzks((k-1)*p+1:k*p,:);
    end
end

% ==================== step 1: compute matrix Wm  =========================
% *********************  according to equation (48) ***********************
% Wm
for i=1:q
    for k=1:M
    U_m(p*(i-1)+1:p*i,m*(k-1)+1:m*k)=exp(j*(i-1)*wwd(k,1))*eye(m,m);
    end
end
U_re=[real(U_m),imag(U_m)];
Y_re=[real(Y_qp_mM),imag(Y_qp_mM)];
% ================= step 2: compute QR factorizatin   =====================
% ******* according to equation (62) using lqdecomposition function *******
[Q,R]=qr([U_re' Y_re'],0);
R22=R(end-q+1:end,end-q+1:end);
% ==================== step 3: compute SVD  ===============================
% ******* according to equation (63) using lqdecomposition function *******
[U_hat,S_hat,V_hat] = svd(R22');

% =================== step 4: detemine system order  ======================
% **** according to equation (64) and estimate of observability matrix ****
U_hat_s=U_hat(:,1:n);

% ================= step 5: detemine A_hat & C_hat  =======================
% ***************** according to equations (65) & (66) ********************
O_hat_upperline=U_hat_s(p+1:end,:);
O_hat_underline=U_hat_s(1:end-p,:);
A_hat=inv(O_hat_underline'*O_hat_underline)*O_hat_underline'*O_hat_upperline;
C_hat=U_hat_s(1:p,:);
% ================= step 6: detemine B_hat & D_hat  =======================
% ********************* according to equation (67) ************************
teta(1:n+1,1)=0;       % the vector contains of B_hat and D_hat coefficient Az least square problem
for i=1:(M)
    C_hattimeinvA_hat(i,:)=C_hat*inv((exp(j*wwd(i,1)))*eye(size(A_hat))-A_hat);
end
zaribD(1:M,1)=1;
B_hat=teta(1:n,1);
D_hat=teta(n+1,1);
epsilon=Gzks(1:M)-D_hat*C_hattimeinvA_hat*B_hat; % estimation error
norm(epsilon)
jakoobiyan=[C_hattimeinvA_hat zaribD];
jakoobiyan_re=[real(jakoobiyan);imag(jakoobiyan)];
% teta=inv((jakoobiyan_re'*jakoobiyan_re))*((jakoobiyan_re')*[real(Gzks(1:M));imag(Gzks(1:M))]);
teta=inv((jakoobiyan_re'*jakoobiyan_re))*((jakoobiyan_re')*[real(Gzks(1:M));imag(Gzks(1:M))]);
B_hat=teta(1:n,1);
D_hat=teta(n+1,1);
epsilon=Gzks(1:M)-D_hat*C_hattimeinvA_hat*B_hat;
norm(epsilon)
% =============== step 7: estimated transfer function  ====================
% ********************* according to equation (68) ************************
G_hat=ss(A_hat,B_hat,C_hat,D_hat,T);
% figure
% bode(G_hat)

% % % % % % % % % % % % % % % % % % % % % %   
sysc=d2c(G_hat,'tustin');
figure
plot(ff(21:end),20*log10(abs(Gjw(21:end))));
hold on
[magG,phaseG,w]=bode(sysc,10.5*2*pi:pi:2*pi*400);
  for k=1:size(w)
      bb(k,1)=magG(:,:,k);
  end
  plot(w/2/pi,20*log10(bb),'r')

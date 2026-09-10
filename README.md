# Lattice Dispersion Visualizer

**A MATLAB-Based Framework for Visualizing Electron Energy Across Real and Reciprocal Space**

A scientific visualization project exploring how electron energy in a simplified
1D periodic lattice can be represented simultaneously as a function of
**wavevector** and **position**.

In periodic quantum systems, the description of an electron naturally connects
two complementary representations of its motion: **real space**, where the
particle experiences the spatial structure of the lattice and external
potentials, and **reciprocal space**, where its allowed energy states are
characterized through wavevector-dependent dispersion relations.

Conventional band-structure representations primarily describe energy as a
function of wavevector, \(E(k)\), while real-space descriptions emphasize how
the potential energy varies with position, \(E(x)\). These viewpoints describe
different aspects of the same physical system, but are often examined
separately.

This project explores a simplified computational representation in which these
two dependencies are considered simultaneously through a position-dependent
energy landscape.

## Overview

The idea originated from a simple question:

> **What might an energy band look like when both the wavevector dependence of
> the electronic dispersion and the spatial variation of the lattice are
> represented within the same model?**

The resulting project, **Lattice Dispersion Visualizer**, is an evolving MATLAB
framework designed to investigate this question through numerical modeling and
scientific visualization.

The current implementation combines a tight-binding-inspired dispersion
relation with a periodic lattice potential and an externally applied electric
field. This produces an energy landscape in which reciprocal-space dispersion
and real-space modulation can be examined together, including the emergence of
a field-induced spatial energy tilt.

The project is therefore not intended merely as a plotting utility. Its broader
objective is to provide an intuitive computational bridge between **real space,
reciprocal space, and energy**, while providing a foundation for progressively
more sophisticated physical models and interactive simulation tools.

This project explores that idea using a simplified tight-binding-inspired
energy model:

\[
E(k,x) = -2t\cos(ka)
+ V_0\cos\left(\frac{2\pi x}{a}\right)
- Fx
\]

The model combines three contributions:

- **Tight-binding dispersion** in reciprocal space
- **Periodic lattice potential** in real space
- **Electric-field-induced linear potential** producing an energy tilt

The resulting \(E(k,x)\) landscape provides a way to visualize the connection
between **real space, reciprocal space, and energy** within a single computational
model.

> **Note:** The current implementation is a simplified visualization model
> intended for educational, exploratory, and computational study. It is not
> intended to represent a complete first-principles band-structure calculation.

---

## Current Prototype

The current MATLAB implementation generates three complementary views of the
same energy model:

### 1. Energy vs Wavevector — \(E(k)\)

Shows the tight-binding energy dispersion at a selected midpoint position.

### 2. Energy vs Position — \(E(x)\)

Shows the periodic lattice potential together with the linear
electric-field-induced energy tilt at a selected midpoint wavevector.

### 3. Position-Dependent Energy Landscape — \(E(k,x)\)

A combined 3D representation of energy as a function of wavevector and position.

A top-view representation can also be used to examine the full energy map
without the perspective of the 3D surface.

---

## Current Features

The MATLAB prototype currently:

- Accepts wavelength and position ranges
- Converts wavelength to wavevector using

\[
k = \frac{2\pi}{\lambda}
\]

- Accepts:
  - Hopping energy \(t\)
  - Lattice constant \(a\)
  - Lattice potential amplitude \(V_0\)
  - Electric field \(F\)
  - Number of sampling points
- Generates \(E(k)\)
- Generates \(E(x)\)
- Generates a 3D \(E(k,x)\) energy landscape
- Generates a top-view energy map
- Allows the electric-field-induced tilt to be observed directly in the energy landscape

---

## Model

The current prototype uses:
\[
E(k,x) =
-2t\cos(ka)
+V_0\cos\left(\frac{2\pi x}{a}\right)
-Fx
\]

### Model Components

| Term | Interpretation |
|---|---|
| \(-2t\cos(ka)\) | Tight-binding dispersion |
| \(V_0\cos(2\pi x/a)\) | Periodic lattice potential |
| \(-Fx\) | Electric-field-induced potential-energy tilt |

The field-dependent term provides the spatial tilt that becomes visible in the
resulting \(E(k,x)\) landscape and motivates exploration of field-driven
phenomena such as Wannier–Stark localization.

---

## Example Parameters

The prototype has been tested using parameters inspired by a
**single-walled carbon nanotube (SWCNT)**:

| Parameter | Value |
|---|---:|
| Hopping energy \(t\) | 2.65 eV |
| Lattice constant \(a\) | 0.246 nm |
| Lattice potential \(V_0\) | 4.9 eV |
| Electric field \(F\) | \(2*10^9\) V/m |
| Position \(x\) | 0–5 nm |
| Wavelength \(\lambda\) | 0.1–20 nm |

These parameters are used as an example test case for visualization rather
than as a complete material-specific physical model.

---

## Example Visualizations

### E vs k

<img width="1919" height="1006" alt="Screenshot 2026-09-10 095155" src="https://github.com/user-attachments/assets/85b83b74-aef2-4c60-8b28-c02425cb6eef" />


### E vs x

<img width="1919" height="1003" alt="Screenshot 2026-09-10 095202" src="https://github.com/user-attachments/assets/21aaa043-260a-4c29-bd50-1a548bf5b46c" />

### 3D E(k,x) Landscape

<img width="1919" height="1010" alt="Screenshot 2026-09-10 095224" src="https://github.com/user-attachments/assets/285b61d2-bac4-486b-8378-9af848bff56c" />

### E(k,x) Top View

<img width="1919" height="1012" alt="Screenshot 2026-09-10 095243" src="https://github.com/user-attachments/assets/fe0d1eb9-4203-4c7d-ac40-95fc8a6a169b" />


---

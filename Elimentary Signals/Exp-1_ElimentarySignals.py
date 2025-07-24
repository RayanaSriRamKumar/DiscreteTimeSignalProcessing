import numpy as np
import matplotlib.pyplot as plt

# Time vector
t = np.arange(-5, 5.01, 0.01)

# (1) Continuous-Time Unit Impulse (Approximated)
impulse = np.zeros_like(t)
impulse[np.where(t == 0)] = 1  # δ(t) ≈ 1 at t=0

plt.subplot(3, 2, 5)
plt.stem(t, impulse, linefmt='k', markerfmt=' ', basefmt='k')
plt.title('Impulse Signal δ(t) (approximated)')
plt.xlabel('Time t')
plt.ylabel('Amplitude')
plt.grid(True)
plt.axis([-1, 1, 0, 1.2])

# (2) Continuous-Time Unit Step Function
u = np.where(t >= 0, 1.0, 0.0)

plt.subplot(3, 2, 1)
plt.plot(t, u, 'b', linewidth=2)
plt.title('Unit Step Signal u(t)')
plt.xlabel('Time t')
plt.ylabel('Amplitude')
plt.grid(True)
plt.axis('tight')

# (3) Continuous-Time Unit Ramp Function
r = t * (t >= 0)

plt.subplot(3, 2, 2)
plt.plot(t, r, 'r', linewidth=2)
plt.title('Ramp Signal r(t)')
plt.xlabel('Time t')
plt.ylabel('Amplitude')
plt.grid(True)
plt.axis('tight')

# Adjust spacing between subplots
plt.subplots_adjust(hspace=0.4)  # Decrease this value to reduce vertical space

plt.show()

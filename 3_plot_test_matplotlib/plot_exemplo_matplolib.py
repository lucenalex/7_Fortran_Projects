import matplotlib.pyplot as plt
import numpy as np

# Leia os dados do arquivo gerado pelo programa fortran
data = np.loadtxt('plot_sine_function.dat')

# Separe os dados em duas variáveis: x e y
x = data[:,0]
y = data[:,1]

# Plote os dados
plt.plot(x, y, label = 'Sine function')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Plot of Sine function')
plt.legend()
plt.savefig('plot_sine_function.png')
plt.show()

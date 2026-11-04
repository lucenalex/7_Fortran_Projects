import matplotlib.pyplot as plt
import numpy as np

# Carregar dados do arquivo output.dat
data = np.loadtxt('output.dat')

# Supondo que os dados tenham três colunas: r, g(r) e a(r)
r = data[:, 0]
g = data[:, 1]
a = data[:, 2]

# Gerar o gráfico para g(r) e a(r)
plt.figure(figsize=(10, 6))
plt.plot(r, g, marker='o', linestyle='-', label='g(r)')
plt.plot(r, a, marker='x', linestyle='-', label='a(r)')
plt.xlabel('r')
plt.ylabel('Funções g(r) e a(r)')
plt.title('Soluções de g(r) e a(r)')
plt.legend()
plt.grid(True)
plt.savefig('plot_g_a.png')
plt.show()

# Carregar dados do controle de erro (supondo que o erro foi salvo em um arquivo separado)
error_data = np.loadtxt('error.dat')

# Supondo que os dados de erro tenham três colunas: número de pontos, erro em g e erro em a
n_points = error_data[:, 0]
errors_g = error_data[:, 1]
errors_a = error_data[:, 2]

# Gerar o gráfico do controle de erro
plt.figure(figsize=(10, 6))
plt.plot(n_points, errors_g, marker='o', linestyle='-', label='Erro em g(r)')
plt.plot(n_points, errors_a, marker='x', linestyle='-', label='Erro em a(r)')
plt.xlabel('Número de pontos')
plt.ylabel('Erro (Norma Infinito)')
plt.xscale('log')
plt.yscale('log')
plt.title('Convergência do Erro')
plt.legend()
plt.grid(True)
plt.savefig('plot_error.png')
plt.show()
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import MultipleLocator

# Ler os dados do arquivo CSV
data = np.genfromtxt('resultados.csv', delimiter=',', names=['x', 'y'])

# Definir os limites dos eixos
plt.xlim(0, 1)
plt.ylim(0, 1)

# Criar o gráfico
plt.plot(data['x'], data['y'])

# Ajustar o aspecto do gráfico (opcional)
# plt.gca().set_aspect('equal')

# Definir o comprimento e espessura dos ticks
tick_length = 7  # Ajuste este valor
tick_width = 0.9  # Ajuste este valor

# Configurar ticks e subticks
plt.tick_params(axis='both', direction='in', top=True, right=True, length=tick_length, width=tick_width, color='gray')  # Ticks internos, no topo e na direita, com cor cinza
plt.tick_params(axis='both', which='minor', direction='in', top=True, right=True, length=tick_length/2, width=tick_width, color='gray')  # Subticks internos, no topo e na direita, com cor cinza

# Definir a frequência dos subticks
plt.gca().xaxis.set_minor_locator(MultipleLocator(0.05))
plt.gca().yaxis.set_minor_locator(MultipleLocator(0.05))

# Adicionar título e rótulos aos eixos
plt.title('Solução da EDO usando o Método de Euler', fontsize=14)  # Tamanho da fonte ajustado
plt.xlabel('x', fontsize=12)  # Tamanho da fonte ajustado
plt.ylabel('y', fontsize=12)  # Tamanho da fonte ajustado

# Exibir o gráfico
plt.show()

# Salvar o gráfico em um arquivo (opcional)
plt.savefig('solucao_edo_matplotlib.png', dpi=300)  # Resolução ajustada

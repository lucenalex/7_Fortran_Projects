import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import MultipleLocator

n_values = [1.0, 2.0, 4.0, 8.0, 16.0]

for n in n_values:
    filename = f'resultados_{int(n)}'

    try:
        x_vals, y_vals = np.loadtxt(f'{filename}.dat', delimiter=',', unpack=True)
    except ValueError as e:
        print(f"Erro ao ler arquivo {filename}.dat:")
        print(e)  # Imprime a mensagem de erro detalhada
        continue

    plt.plot(x_vals, y_vals, label=f'n = {n}')  # Plota a curva atual no mesmo quadro

    # Definir os limites dos eixos
plt.xlim(0, 1)
plt.ylim(0, 1)

# Definir o comprimento e espessura dos ticks
tick_length = 7  # Ajuste este valor
tick_width = 0.9  # Ajuste este valor

# Configurar ticks e subticks
plt.tick_params(axis='both', direction='in', top=True, right=True, length=tick_length, width=tick_width, color='gray')  # Ticks internos, no topo e na direita, com cor cinza
plt.tick_params(axis='both', which='minor', direction='in', top=True, right=True, length=tick_length/2, width=tick_width, color='gray')  # Subticks internos, no topo e na direita, com cor cinza

# Definir a frequência dos subticks
plt.gca().xaxis.set_minor_locator(MultipleLocator(0.05))
plt.gca().yaxis.set_minor_locator(MultipleLocator(0.05))

plt.xlabel('x')
plt.ylabel('y')



plt.title('Solução da EDO dy/dx = n*y', fontsize=14)

# Adicionar título e rótulos aos eixos

plt.xlabel('x', fontsize=12)  # Tamanho da fonte ajustado
plt.ylabel('y', fontsize=12)  # Tamanho da fonte ajustado


plt.legend()
plt.grid(False)

plt.show()  # Exibe o quadro com todas as curvas

# Salvar o gráfico em um arquivo (opcional)
plt.savefig('solucao_edo_matplotlib.png', dpi=300)  # Resolução ajustada


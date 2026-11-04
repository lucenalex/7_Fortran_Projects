import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import fsolve
from scipy.interpolate import interp1d

def monta_sistema(g, a, r, h, n_winding):
    """Monta o sistema de equações discretizadas."""
    n = len(g)
    eqs_g = np.zeros(n)
    eqs_a = np.zeros(n)

    for i in range(1, n - 1):
        eqs_g[i] = (g[i+1] - g[i-1]) / (2*h) - g[i] * a[i] / r[i]
        eqs_a[i] = (a[i+1] - a[i-1]) / (2*h*r[i]) + (1 - g[i]**2)

    # Condições de contorno
    eqs_g[0] = g[0]
    eqs_g[-1] = g[-1] - 1.0
    eqs_a[0] = a[0] - n_winding
    eqs_a[-1] = a[-1]
    return eqs_g, eqs_a

def solve_system(n_pontos, r_max, n_winding, tol):
    """Resolve o sistema de equações."""
    h = r_max / (n_pontos - 1)
    r = np.linspace(0, r_max, n_pontos)

    # Chutes iniciais
    g = r / (r + 1.0)
    a = n_winding * np.exp(-r)

    erro_anterior = 1e30
    for iter in range(1000):
        g_anterior = g.copy()
        a_anterior = a.copy()

        eqs_g, eqs_a = monta_sistema(g, a, r, h, n_winding)

        # Resolução do sistema (usando fsolve, que implementa um método de Newton)
        variaveis = np.concatenate((g, a))
        eqs = np.concatenate((eqs_g, eqs_a))
        solucao = fsolve(lambda vars: np.concatenate(monta_sistema(vars[:n_pontos], vars[n_pontos:], r, h, n_winding)), variaveis)
        g = solucao[:n_pontos]
        a = solucao[n_pontos:]
        

        erro = max(np.max(np.abs(g - g_anterior)), np.max(np.abs(a - a_anterior)))

        if erro < tol:
            return r, g, a
        if erro > erro_anterior * 10.0:
            print("Divergindo!")
            return None, None, None

        erro_anterior = erro
    print("Não convergiu após 1000 iterações.")
    return None, None, None

def refinamento_malha(n_winding, r_max, tol, num_refinamentos=3):
    """Executa o refinamento de malha."""
    resultados = []
    for i in range(1, num_refinamentos + 1):
        n_pontos = 50 * 2**(i-1)
        r, g, a = solve_system(n_pontos, r_max, n_winding, tol)
        if r is not None:  # Verifica se a solução convergiu
            resultados.append((r, g, a))
        else:
            print(f"Não convergiu para n_pontos = {n_pontos}")
            return None

    erros_g = []
    erros_a = []
    for i in range(len(resultados) - 1):
        r_coarse, g_coarse, a_coarse = resultados[i]
        r_fine, g_fine, a_fine = resultados[-1]
        
        # Interpolação
        interp_g = interp1d(r_fine, g_fine, kind='linear', fill_value="extrapolate")
        interp_a = interp1d(r_fine, a_fine, kind='linear', fill_value="extrapolate")
        
        g_interp = interp_g(r_coarse)
        a_interp = interp_a(r_coarse)

        erro_g = np.max(np.abs(g_coarse - g_interp))
        erro_a = np.max(np.abs(a_coarse - a_interp))
        erros_g.append(erro_g)
        erros_a.append(erro_a)
        print(f"Erro g entre n={len(r_coarse)} e n={len(r_fine)}: {erro_g}")
        print(f"Erro a entre n={len(r_coarse)} e n={len(r_fine)}: {erro_a}")
    return resultados, erros_g, erros_a

# Parâmetros principais
n_winding = 1
r_max = 20.0
tol = 1e-8
num_refinamentos = 3

# Executa o refinamento de malha
resultados, erros_g, erros_a = refinamento_malha(n_winding, r_max, tol, num_refinamentos)

# Plota os resultados (apenas a solução mais refinada)
if resultados is not None:
    r, g, a = resultados[-1]
    plt.figure(figsize=(10, 6))
    plt.plot(r, g, label='g(r)')
    plt.plot(r, a, label='a(r)')
    plt.xlabel('r')
    plt.legend()
    plt.grid(True)
    plt.title(f"Solução para n = {n_winding}")
    plt.show()

    # Plota os erros de g e a
    n_coarse = [len(resultados[i][0]) for i in range(len(resultados)-1)]
    plt.figure(figsize=(10, 6))
    plt.plot(n_coarse, erros_g, marker='o', label='Erro em g(r)')
    plt.plot(n_coarse, erros_a, marker='x', label='Erro em a(r)')
    plt.xlabel('Número de pontos (malha grosseira)')
    plt.ylabel('Erro (Norma Infinito)')
    plt.xscale('log')
    plt.yscale('log')
    plt.legend()
    plt.grid(True)
    plt.title("Convergência do Erro")
    plt.show()
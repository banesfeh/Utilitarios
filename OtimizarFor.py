
from numba import njit
from timeit import timeit

@njit
def com_funcao(n):
    result = []
    for a in range(n):
        for b in range(n):
            ((a + b) % 11 == 0) and result.append((a, b))

def sem_funcao(n):
    result = []
    for a in range(n):
        for b in range(n):
            ((a + b) % 11 == 0) and result.append((a, b))

def tempo(n):
     # Tempo da função sem Numba
     tempo_sem = timeit(lambda: sem_funcao(n), number=1)

     # Tempo da função com Numba
     tempo_com = timeit(lambda: com_funcao(n), number=1)

     print(f"sem função: {tempo_sem:.5f} segundos")
     print(f"com função: {tempo_com:.5f} segundos")

tempo(15000)

# CalculadoraBison-Flex

# Como executar a calculadora Flex/Bison no GitHub Codespaces

# 1. Verificar os arquivos do projeto

Os arquivos principais são:

* `Calc.y`
* `calc.l`

---

# 2. Abrir o terminal

No menu superior:

```txt
Terminal → New Terminal
```

---

# 3. Instalar Flex, Bison e G++

Digite no terminal:

```bash
sudo apt update
sudo apt install flex bison g++ -y
```

---

# 4. Gerar o parser com Bison

Digite:

```bash
bison -d -o calc.tab.c Calc.y
```

Arquivos gerados:

* `calc.tab.c`
* `calc.tab.h`

---

# 5. Gerar o lexer com Flex

Digite:

```bash
flex calc.l
```

Arquivo gerado:

* `lex.yy.c`

---

# 6. Compilar a calculadora

Digite:

```bash
g++ lex.yy.c calc.tab.c -o calc
```

Será criado o executável:

```txt
calc
```

---

# 7. Executar a calculadora

Digite:

```bash
./calc
```

---

# 8. Exemplos de uso

## Soma

Entrada:

```txt
10 + 5
```

Saída:

```txt
15
```

---

## Subtração

Entrada:

```txt
20 - 7
```

Saída:

```txt
13
```

---

## Multiplicação

Entrada:

```txt
8 * 4
```

Saída:

```txt
32
```

---

## Divisão

Entrada:

```txt
20 / 5
```

Saída:

```txt
4
```

---

# Operador personalizado

A calculadora possui um operador especial:

```txt
pedrohenrique
```

Esse operador realiza o resto da divisão (`%`).

## Exemplo

Entrada:

```txt
10 pedrohenrique 3
```

Saída:

```txt
1
```

Pois:

```txt
10 % 3 = 1
```

---

# 10. Encerrar a calculadora

Pressione:

```txt
CTRL + C
```

no terminal.

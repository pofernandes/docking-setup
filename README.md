# Conda Environment Setup Script

Este projeto inclui um script bash que facilita a criação de um ambiente Conda para Docking Molecular. Ele permite que você escolha o nome do ambiente e automaticamente configura as dependências para o uso do Autodock Vina, Rdkit e Plip descritas no arquivo `environment.yml`.

## Requisitos

Antes de usar este script, certifique-se de que você tem os seguintes requisitos atendidos:

- **Conda ou Anaconda**: Você deve ter o `conda` ou `Anaconda` instalado na sua máquina. Se você ainda não o fez, pode instalar o Conda seguindo as instruções [aqui](https://docs.conda.io/en/latest/miniconda.html).
- **Bash**: Este script é feito para rodar em um ambiente bash Linux

## Como usar

### 1. Clone ou baixe o projeto

```bash
git clone https://github.com/pofernandes/docking-setup
cd docking-setup
```

### 2. Verifique se o `environment.yml` está no diretório

O arquivo `environment.yml` já está presente no projeto, e inclui as dependências que serão instaladas no ambiente Conda.

### 3. Torne o script executável

Antes de rodar o script, torne-o executável com o seguinte comando:

```bash
chmod +x create_conda_env.sh
```

### 4. Execute o script

Agora você pode rodar o script para criar o ambiente. O script solicitará o nome do ambiente e configurará tudo automaticamente.

```bash
./create_conda_env.sh
```

### 5. Ative o ambiente

Depois que o ambiente for criado com sucesso, você pode ativá-lo usando o seguinte comando:

```bash
conda activate <nome_do_seu_ambiente>
```

Substitua `<nome_do_seu_ambiente>` pelo nome que você forneceu durante a execução do script.



## Removendo o ambiente

Se você deseja remover o ambiente criado, pode fazer isso com o seguinte comando:

```bash
conda remove --name <nome_do_seu_ambiente> --all
```

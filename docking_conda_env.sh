
# Solicitar o nome do ambiente
read -p "Digite o nome do ambiente Conda: " ENV_NAME

# Verificar se o arquivo environment.yml existe
if [[ ! -f "environment.yml" ]]; then
    echo "O arquivo environment.yml não foi encontrado no diretório atual."
    exit 1
fi

# Substituir o nome do ambiente no arquivo environment.yml
sed -i.bak "s/^name: .*/name: $ENV_NAME/" environment.yml

# Criar o ambiente conda
echo "Criando o ambiente Conda '$ENV_NAME'..."
conda env create -f environment.yml

# Verificar se o ambiente foi criado com sucesso
if [[ $? -eq 0 ]]; then
    echo "Ambiente '$ENV_NAME' criado com sucesso."
else
    echo "Falha ao criar o ambiente '$ENV_NAME'."
fi
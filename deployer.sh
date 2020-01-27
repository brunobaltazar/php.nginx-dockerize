#!/bin/sh
# BRANCH_TAG=$1
# SISTEMA=$2
# PORT=$3
export BRANCH_TAG=$(echo $BRANCH_TAG | cut -d'/' -f 2);
export HOST=$(cat /etc/hostname);
#export BRANCH_TAG=master
#export SISTEMA=php.nginx-dockerize
#export PORT=8000
#export APP_PATH_DEPLOY="/opt/vagrant/${SISTEMA}"

#echo "-------------------------------------------------------------------------------"
#echo "   Clonando  projeto ${SISTEMA} do git  "${BRANCH_TAG}"                        "
#echo "-------------------------------------------------------------------------------"

#if [ -d "$APP_PATH_DEPLOY" ]
#then
#echo "O diretório existe";
#   cd ${APP_PATH_DEPLOY} && git checkout ${BRANCH_TAG} && git pull
#elif [ ! -d ${APP_PATH_DEPLOY} ]
#then
# Necessário add gera um chave publica na sua maquina e depois adicionar no servidor gitlab
# Usuário deve ser dono da pasta vagrant ou ter permissão de leitura e escrita
#echo "O diretório não existe iniciando a clonagem do projeto";
#   git clone -b ${BRANCH_TAG} ssh://git@github.com:brunobaltazar/${SISTEMAS}.git /opt/vagrant/${SISTEMA}
#fi

ls -lha && pwd
docker-compose up -d --build

echo "-------------------------------------------------------------------------------"
echo "  PATH_DEPLOY realizado com sucesso   ${HOST}:${PORT}/index.php                "
echo "-------------------------------------------------------------------------------"

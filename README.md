# TECHNOBANK

Configuração do projeto
A instalação do framework e suas bibliotecas auxiliares é feita através do pip, gerenciador de bibliotecas nativo do Python. Proceda com o comando abaixo:
pip install robotframework

E verifique se a instalação ocorreu corretamente:
robot --version

A seguir, proceda com a instalação das bibliotecas abaixo:
pip install robotframework==6.1.1
pip install robotframework-databaselibrary==1.3.1
pip install robotframework-excellib==2.0.1
pip install robotframework-extendedrequestslibrary==0.5.5
pip install robotframework-pythonlibcore==4.2.0
pip install robotframework-requests==0.9.5
pip install robotframework-seleniumlibrary==6.1.1
pip install selenium==4.11.2

Add your files

git checkout -b feature/v1.technobank
git status 
git add .
git commit -m "v1.technobank"
git push --set-upstream origin feature/v1.technobank

Execução do projeto
robot -d ./log Integracao/tests/


 

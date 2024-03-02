# TECHNOBANK

**Configuração do projeto**<br>
A instalação do framework e suas bibliotecas auxiliares é feita através do pip, gerenciador de bibliotecas nativo do Python. Proceda com o comando abaixo:<br>
pip install robotframework
<br>
E verifique se a instalação ocorreu corretamente:<br>
robot --version<br>

**A seguir, proceda com a instalação das bibliotecas abaixo:**<br>
pip install robotframework==6.1.1<br>
pip install robotframework-databaselibrary==1.3.1<br>
pip install robotframework-excellib==2.0.1<br>
pip install robotframework-extendedrequestslibrary==0.5.5<br>
pip install robotframework-pythonlibcore==4.2.0<br>
pip install robotframework-requests==0.9.5<br>
pip install robotframework-seleniumlibrary==6.1.1<br>
pip install selenium==4.11.2<br>

**Add your files**<br>

git checkout -b feature/v1.technobank<br>
git status<br>
git add .<br>
git commit -m "v1.technobank"<br>
git push --set-upstream origin feature/v1.technobank<br>

**Execução do projeto**<br>
robot -d ./log Integracao/tests/


 

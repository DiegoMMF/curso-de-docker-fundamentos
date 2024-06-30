# ingreso de la imagen de python
FROM python:3.9.19-alpine3.20

# ingreso el directorio de trabajo
WORKDIR /app

# copio el archivo requirements.txt al directorio de trabajo /app
COPY requirements.txt requirements.txt
# instalo las dependencias
RUN pip install -r requirements.txt

# copio el contenido de la carpeta actual (del Dockerfile) al directorio de trabajo
COPY . .

# especifico el comando que se ejecutará cuando se inicie el contenedor
CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0" ]
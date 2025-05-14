#!/bin/bash
echo "Ingesando al proyecto"
cd proyecto_pytest

echo "actvando el entorno virtual"
source venv/bin/activate

echo "instalando dependencias"
pip install -r requeriments.txt

echo "ejecutando pruebas con pytest"
pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas resultados en reports"
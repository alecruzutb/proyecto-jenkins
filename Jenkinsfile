pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '====== ETAPA: Checkout ======'
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/alecruzutb/proyecto-jenkins.git']]
                ])
                echo 'Código descargado exitosamente'
            }
        }

        stage('Build') {
            steps {
                echo '====== ETAPA: Build ======'
                echo 'Compilando el proyecto...'
                // Ejemplo: Ejecutar script de build
                // sh './build.sh'  // Para sistemas Unix/Linux
                // bat 'build.bat'  // Para Windows
                echo 'Build completado exitosamente'
            }
        }

        stage('Test') {
            steps {
                echo '====== ETAPA: Test ======'
                echo 'Ejecutando pruebas unitarias...'
                // Ejemplo: Ejecutar pruebas
                // sh './test.sh'   // Para sistemas Unix/Linux
                // bat 'test.bat'   // Para Windows
                echo 'Todas las pruebas pasaron correctamente'
            }
        }

        stage('Deploy Simulation') {
            steps {
                echo '====== ETAPA: Deploy Simulation ======'
                echo 'Simulando despliegue en ambiente de prueba...'
                echo 'Copiando artefactos...'
                echo 'Configurando variables de entorno...'
                echo 'Iniciando servicios...'
                echo 'Despliegue simulado completado exitosamente'
            }
        }
    }

    post {
        always {
            echo '====== Pipeline Finalizado ======'
        }
        success {
            echo 'Pipeline ejecutado exitosamente ✓'
        }
        failure {
            echo 'Pipeline falló ✗'
        }
    }
}
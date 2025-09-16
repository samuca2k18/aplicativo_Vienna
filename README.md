

### Título e Slogan

```markdown
# 🎶 Vienna - Controle de Frequência

**Gerenciamento de aulas e frequências para professores de música.**
```

-----

### Sobre o Projeto

O aplicativo **Vienna** foi desenvolvido para auxiliar professores de música no gerenciamento de suas aulas e no controle de frequência de alunos. Com uma interface intuitiva, o aplicativo permite que professores se autentiquem, visualizem sua lista de alunos e marquem a presença em tempo real.

Este projeto visa simplificar o dia a dia de educadores musicais, substituindo cadernos e planilhas por uma solução digital completa e acessível.

-----

### Funcionalidades

  - **Autenticação de Professor:** Login seguro usando e-mail e senha.
  - **Dashboard do Professor:** Visualização rápida das próximas aulas e alunos.
  - **Lista de Alunos:** Gerenciamento da lista de alunos.
  - **Controle de Frequência:** Marcar a presença dos alunos de forma ágil e intuitiva.
  - **Perfil do Aluno:** (Funcionalidade futura) Visualizar o histórico de frequência e notas.

-----

### Tecnologias

Este projeto é construído com as seguintes tecnologias e plataformas:

  - **Flutter:** Framework para desenvolvimento de aplicativos multiplataforma (Android e Web).
  - **Dart:** Linguagem de programação utilizada pelo Flutter.
  - **Firebase:** Plataforma de desenvolvimento que oferece serviços de backend, incluindo:
      - **Firebase Authentication:** Para o gerenciamento de autenticação e usuários.
      - **Cloud Firestore:** Banco de dados NoSQL em nuvem para armazenar dados de alunos e aulas.
  - **Git:** Sistema de controle de versão para gerenciar o código.

-----

### Como Rodar o Projeto

Siga estas instruções para configurar e executar o aplicativo no seu ambiente local.

#### 1\. Pré-requisitos

  - **Flutter SDK** (versão 3.29.2 ou superior)
  - **Android Studio** com Flutter e Dart plugins instalados
  - **Java Development Kit (JDK)** 17 ou superior
  - **Android SDK** (via SDK Manager no Android Studio)
      - SDK Platform 34
      - NDK (Side by side) 27.0.12077973

#### 2\. Instalação

1.  Clone este repositório para sua máquina local:

    ```bash
    git clone https://github.com/samuca2k18/aplicativo_vienna.git
    ```

2.  Navegue até o diretório do projeto:

    ```bash
    cd aplicativo_vienna
    ```

3.  Obtenha as dependências do Flutter:

    ```bash
    flutter pub get
    ```

4.  Configure o Firebase para o seu projeto Android:

      - Crie um projeto no Console do Firebase.
      - Adicione um aplicativo Android ao projeto, informando o `package name` do seu projeto.
      - Baixe o arquivo `google-services.json` e coloque-o na pasta `android/app/`.

#### 3\. Executando o Aplicativo

Para rodar o aplicativo em um dispositivo ou emulador Android:

```bash
flutter run
```

-----

### Contribuição

Contribuições são bem-vindas\! Se você quiser melhorar este projeto, siga estes passos:

1.  Faça um fork do projeto.
2.  Crie uma nova branch para sua funcionalidade (`git checkout -b feature/nome-da-feature`).
3.  Faça suas alterações e commit (`git commit -m 'feat: adicione nova funcionalidade'`).
4.  Envie suas alterações para o seu fork (`git push origin feature/nome-da-feature`).
5.  Abra um Pull Request.

-----

### Licença

Este projeto está sob a licença MIT.

```
```

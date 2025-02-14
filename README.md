# Pós-instalação Debian com i3wm

Este projeto contém um script automatizado que configura o ambiente de trabalho do Debian com o gerenciador de janelas i3wm e realiza várias configurações pós-instalação essenciais.

## Objetivo

Este script visa simplificar a instalação e configuração do Debian com o i3wm, aplicando ajustes essenciais, instalando pacotes comuns e personalizando o sistema para uma experiência de usuário otimizada.

## Funcionalidades

- Instalação do **i3wm** (e dependências necessárias).
- Instalação de aplicativos essenciais, como **terminals**, **navegadores**, **editors**, etc.
- Configurações automáticas do **i3wm** para otimizar a experiência do usuário.
- Ajustes em arquivos de configuração do sistema, como **.bashrc** e outros.
- Instalação de fontes e temas populares.
- Outros ajustes personalizados conforme a necessidade.

## Requisitos

- **Debian 10 ou superior**.
- Acesso ao terminal com permissões de **superusuário** (`sudo`).

## Como usar

1. **Baixe o script**

   Clone o repositorio.

   ```bash
   git clone https://github.com/mateusoliveira-linux/i3_deb.git
   ```

2. **Dê permissão de execução aos scripts**

   Torne os scripts executáveis:

   ```bash
   chmod +x installer.sh i3installer.sh userconf.sh
   ```

3. **Execute os scripts**

   Agora execute o script com permissões de superusuário:

   ```bash
   sudo ./i3installer.sh && userconf.sh
   ```

4. **Instalação dos pacotes adicionais**

    Execute o script `installer.sh` com um ou mais argumentos:

    ```bash
    sudo ./installer.sh [argumentos]
    ```

    Para visualizar os argumentos use `--help`:

    ```bash
    ./installer.sh --help
    ```
    Lista de argumentos:

    |Argumentos|Conjunto de pacotes|
    |----------|-------------------|
    |--help    |mostra todos os argumentos|
    |--system  |utilitarios de sistema|
    |--dev     |ferramentos de desenvolvimento|
    |--midea   |multimidia e utilitarios|
    |--web     |navegadores e ferramentas web|
    |--creat   |ferramentos de criatividade|

## Lista de pacotes padrão

- **--system**

    |Pacote|Descrição|
    |------|---------|
    |xfce4-terminal|emulador de terminal| 
	|neofetch|infomações do sistema|
	|rsync|suncronizar arquivos e diretorios|
	|nitrogen|mudança e navegação de papel de parede|
	|curl|transferir dados usando vários protocolos|
	|htop|visualizador e gerenciador de processos|
	|pcmanfm|gerenciador de arquivos|
	|flatpak|suporte a flatpaks|
	|pulseaudio|servidor de som|
	|lm-sensors|monitoramento de temperatura|
	|lightdm|gerenciador de login|

- **--dev**

    |Pacote|descrição|
    |------|---------|
    |vim   |editor de código|
    |build-essential|pacotes essenciais para a construção de pacotes Debian|
    |python3-pip|gernciador de bibliotecas do python|
    |simulide|simulador de circuitos eletronicos|

- **--medea**

    |Pacote|descrição|
    |------|---------|
    |mirage|visualizador de imagens|
    |antrill|visializador de PDF|
    |moc|reprodutor de musica em linha de comando|
    |vlc|reprodutor de mídia|

- **--web**

    |Pacote|descrição|
    |------|---------|
    |firefox|navegador web|
    |transmission|cliente bittorrent|

- **--creat**

    |Pacote|descrição|
    |------|---------|
    |musescore|editor de partitura|
    |gimp|editor de images|
    |inkscape|editor de images vetoriais|

## O que o script faz

- **Instala o i3wm** e seus pacotes relacionados.
- **Configurações do i3wm**: O script cria ou atualiza os arquivos de configuração do i3wm (por exemplo, `~/.config/i3/config`).
- **Instalação de pacotes**: Inclui pacotes como `i3bloks`, `pcmanfm`, `rsync`, `dmenu`, `xfce-terminal`, `firefox`, e outros aplicativos úteis.
- **Ajustes no sistema**: Modifica a configuração do sistema para garantir um melhor desempenho e experiência.

## Personalizações

Se você deseja personalizar o script com os softwares que você mais usa, basta editar o arquivo `installer.sh` para incluir ou remover pacotes, `userconf.sh` para configurações ou ajustes. Algumas seções do script podem ser comentadas para facilitar a personalização.

## Licença

Este projeto está licenciado sob a [Licença MIT](https://opensource.org/licenses/MIT).

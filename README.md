# Sprint 1 - Configurando VPC e Instância AWS  
**Compass UOL**

> **Nota:**
> Esta documentação faz parte do programa da Compass UOL e não é considerado um tutorial. Siga cada etapa cuidadosamente e, em caso de dúvidas, consulte a documentação oficial da AWS. 

## 0. Pré-requisitos

- **Computador com Linux** (qualquer distribuição)  
  Ou **Windows com Windows Subsystem for Linux (WSL)** instalado.

    - Como instalar o WSL no Windows:

        [Acompanhe este tutorial da Alura](https://www.alura.com.br/artigos/wsl-executar-programas-comandos-linux-no-windows?utm_term=&utm_campaign=topo-aon-search-gg-dsa-artigos_conteudos&utm_source=google&utm_medium=cpc&campaign_id=11384329873_164240702375_703853654617&utm_id=11384329873_164240702375_703853654617&hsa_acc=7964138385&hsa_cam=topo-aon-search-gg-dsa-artigos_conteudos&hsa_grp=164240702375&hsa_ad=703853654617&hsa_src=g&hsa_tgt=aud-396128415587:dsa-2276348409543&hsa_kw=&hsa_mt=&hsa_net=google&hsa_ver=3&gad_source=1&gad_campaignid=11384329873&gclid=CjwKCAjwsZPDBhBWEiwADuO6yyGQfTJnF0nhUWCey5rg91xU9ah7KDSnoU6afozjdcvlRnw_r7VJfRoCB4IQAvD_BwE)
    - Recomendação:

        [Instale o Ubuntu pela Microsoft Store (recomendado)](https://apps.microsoft.com/detail/9pdxgncfsczv?ocid=webpdpshare)

    - Guia de instalação Linux em Dual Boot com o Windows(opcional)

        [Guia completo para Fedora em Dual Boot (opcional)](https://discussion.fedoraproject.org/t/guide-fedora-42-workstation-manual-partition-with-without-luks2-encryption-with-windows-11-dual-boot-setup/149123)
    
         [Site oficial do Fedora](https://fedoraproject.org/)

- **Conhecimento básico do console AWS**
    - [Crie uma conta gratuitamente](https://aws.amazon.com/pt/training/digital/?p=train&c=tc&z=1)
    >**Nota:** Mesmo selecionando a conta gratuita, o sistema irá pedir um cartão de crédito para finalizar o cadastro. CUIDADO com os recursos que você irá explorar na AWS.
- **Vontade de aprender e dedicação**

---

## 1. Introdução

Nesta primeira Sprint fomos introduzidos ao mundo do **Linux**, primordial para o entendimento da virtualização em nuvem. Antes de entrarmos na AWS ou na virtualização de fato, procure entender e compreender a interface de linha de comando (CLI) no LINUX. Independente da distribuição que esteja usando, deixe de lado a interface gráfica e estude os comandos do terminal. Isso é especialmente relevante porque, em ambientes virtualizados, normalmente não há recursos suficientes para rodar interfaces gráficas completas, tornando o domínio do terminal indispensável

É importante entender que as distribuições LINUX possuem "bases diferentes", na qual elas advém. Explicando de forma mais simples, cada distribuição possuem todos um kernel linux, mas com diferenças importantes em gerenciamento de pacotes, estrutura de arquivos e comandos específicos. Por exemplo, comandos que funcionam no Ubuntu (base Debian) podem não funcionar no Fedora (base Red Hat).

Esses conhecimentos irão formar a base para avançar em virtualização e administração de sistemas Linux na nuvem.

>**Nota:** Conforme documentado a frente, o Amazon Linux, distribuição padrão da AWS, possui base Red Hat.

## 2. Configurando VPC  

VPC é a sigla para Virtual Private Cloud e ele é um ambiente de rede isolado dentro da nuvem AWS. A criação de um VPC garante que possamos executar nossos proprios recursos de forma segura e controlada.

O intuito aqui é criar uma VPC seguindo os passos do desafio. A VPC necessita:
    x. 2 sub-redes pública
    y. 2 sub-redes privadas
    z. Uma Internet Gateway conectada às sub-redes públicas.

Ao acessar pela primeira vez após a criação da conta AWS ou após habilitação do Administrador, siga estes passos:

### 1. Na aba escrito Search no canto superior esquerto digite "VPC" 

![VPC Aba Search](/imgs/AWS-EC2-Aba-search.png)

### 2. Clica em "Your VPCs"

### 3. Ao abrir a página, procure por "Criar VPC"

### 4. A AWS dá duas opções de VPC: "Somente VPC" ou "VPC e muito mais". Iremos na segunda opção, como a imagem abaixo.
    
![VPC Novo VPC](/imgs/AWS-EC2-VPC-CREATE-NEW.png)
    
4.1 Em Bloco CIDR coloque o IP na qual as instâncias irão ser endereçadas. 

! [VPC Novo VPC2](/imgs/AWS-EC2-VPC-CREATE-NEW2.png) 

4.2 Selecionar a quantidade de 2 em "Número de zonas de disponibilidade (AZs)"

4.3 Selecionar a quantidade de 2 sub-redes em ambas as opções abaixo:

        4.3.1 Número de sub-redes públicas

        4.3.2 Número de sub-redes Privada

4.4 Selecionar o



## 5. Referências

Abaixo irei colocar todos os sites na qual retirei recursos e aprendizados para fazer possível este projeto:

[Servidor NGINX básico:](https://www.dio.me/articles/servidor-web-nginx-basico) Menção honrosa. Funciona bem em distribuições com base Debian

[Como instalar NGINX no Fedora:](https://www.atlantic.net/dedicated-server-hosting/how-to-install-nginx-web-server-on-fedora/) Interessante seguir esta opção para distribuições com base RED HAT

[Como criar um Bash Shell simples para enviar mensagens no Telegram: ](https://hackernoon.com/how-to-create-a-simple-bash-shell-script-to-send-messages-on-telegram-lcz31bx) Base para entender a função WEBHOOK do Telegram

[Como criar e executar um Service Timer](https://www.certificacaolinux.com.br/systemd-timer-no-linux-mulplexar-terminal-guia-basico/)

[WIKI systemd.timers](https://wiki.archlinux.org/title/Systemd/Timers)

[Fórum: "Confirmação de status de serviço http"](https://pt.stackoverflow.com/questions/342967/confirma%C3%A7%C3%A3o-de-status-de-servi%C3%A7o-site-ou-host)

[Adicionar saída do bash para texto:](https://pt.stackoverflow.com/questions/374965/adicionar-sa%C3%ADda-do-bash-para-texto) Usado para fazer o script do LOG

[O que o símbolo ">>" faz no echo?:](https://askubuntu.com/questions/471767/what-does-echo-with-symbol-do)

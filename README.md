#Sprint 1 - Configurando VPC e Instância AWS  -  Compass UOL - 

## 0. Pré-requisitos
    - Computador com uma distribuição Linux instalado ou Windows com o Windows Subsystem for Linux (WSL) devidamente instalado

        - [Acompanhe aqui como instalar o WSL no Windows](https://www.alura.com.br/artigos/wsl-executar-programas-comandos-linux-no-windows?utm_term=&utm_campaign=topo-aon-search-gg-dsa-artigos_conteudos&utm_source=google&utm_medium=cpc&campaign_id=11384329873_164240702375_703853654617&utm_id=11384329873_164240702375_703853654617&hsa_acc=7964138385&hsa_cam=topo-aon-search-gg-dsa-artigos_conteudos&hsa_grp=164240702375&hsa_ad=703853654617&hsa_src=g&hsa_tgt=aud-396128415587:dsa-2276348409543&hsa_kw=&hsa_mt=&hsa_net=google&hsa_ver=3&gad_source=1&gad_campaignid=11384329873&gclid=CjwKCAjwsZPDBhBWEiwADuO6yyGQfTJnF0nhUWCey5rg91xU9ah7KDSnoU6afozjdcvlRnw_r7VJfRoCB4IQAvD_BwE)

        - [RECOMENDAÇÃO: Instalar o Ubuntu usando o Microsoft Store](https://apps.microsoft.com/detail/9pdxgncfsczv?ocid=webpdpshare)

        - [RECOMENDAÇÃO: Guia completo para instalação LINUX em Dual BOOT:](https://discussion.fedoraproject.org/t/guide-fedora-42-workstation-manual-partition-with-without-luks2-encryption-with-windows-11-dual-boot-setup/149123) Guia para instalação do [FEDORA](https://fedoraproject.org/), na qual recomendo. 

    - Conhecimento básico da console AWS

    - Coragem e muito esforço

## 1. Introdução
    Nesta primeira Sprint fomos introduzidos ao mundo do linux, primordial para o entendimento da virtualização em nuvem. 

## 2. Como configurar VPC na AWS 


### Referências
Abaixo irei colocar todos os sites na qual retirei recursos e aprendizados para fazer possível este projeto:

[Servidor NGINX básico: ](https://www.dio.me/articles/servidor-web-nginx-basico) Menção honrosa. Funciona bem em distribuições com base Debian

[Como instalar NGINX no Fedora:] (https://www.atlantic.net/dedicated-server-hosting/how-to-install-nginx-web-server-on-fedora/) Interessante seguir esta opção para distribuições com base RED HAT

[Como criar um Bash Shell simples para enviar mensagens no Telegram: ](https://hackernoon.com/how-to-create-a-simple-bash-shell-script-to-send-messages-on-telegram-lcz31bx) Base para entender a função WEBHOOK do Telegram

[Como criar e executar um Service Timer](https://www.certificacaolinux.com.br/systemd-timer-no-linux-mulplexar-terminal-guia-basico/)

[WIKI systemd.timers](https://wiki.archlinux.org/title/Systemd/Timers)

[Fórum: "Confirmação de status de serviço http"](https://pt.stackoverflow.com/questions/342967/confirma%C3%A7%C3%A3o-de-status-de-servi%C3%A7o-site-ou-host)

[Adicionar saída do bash para texto:](https://pt.stackoverflow.com/questions/374965/adicionar-sa%C3%ADda-do-bash-para-texto) Usado para fazer o script do LOG

[O que o símbolo ">>" faz no echo?:](https://askubuntu.com/questions/471767/what-does-echo-with-symbol-do)

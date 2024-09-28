## Provisionamento de EC2 na AWS com Terraform e Docker

Lab para provisionar uma instância EC2 na AWS usando Terraform, além de configurar automaticamente o ambiente com Docker para rodar um container web.

### Estrutura do Projeto:

- **`main.tf`**: Define o provedor AWS e a versão do Terraform.
- **`ec2.tf`**: Provisiona uma instância EC2 no ambiente de produção utilizando a imagem AMI `ami-0c7217cdde317cfec` (Ubuntu 20.04) com tipo de instância `t2.micro`. A instância é configurada com um script que instala o Docker e executa um container da imagem.
- **`security-group.tf`**: Define três grupos de segurança AWS:
  - **allow_ssh**: Permite acesso SSH (porta 22) de qualquer IP.
  - **allow_http**: Permite tráfego HTTP (porta 80) de qualquer IP.
  - **allow_egress**: Permite todo tráfego de saída (egress).
- **`script.sh`**: Script de inicialização que instala atualizações e configura o Docker na instância EC2, em seguida, lança um container com um site web.

### Funcionalidades:
- Provisionamento automatizado de infraestrutura na AWS com **Terraform**.
- Configuração de segurança utilizando **AWS Security Groups**.
- Deploy de um site web rodando em **Docker** na instância EC2.

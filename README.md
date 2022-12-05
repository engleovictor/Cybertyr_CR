# Cybertyr Cyber Range

Um Cyber Range que usa AWS.

### Instalação

1. O usuário deve possuir uma conta no [AWS](https://aws.amazon.com/pt/) e ter feito Download do [Terraform](https://www.terraform.io/) e dar um "Fork" nesse repositório.

2. O usuário deve modificar as linhas 12 e 13 do arquivo [main.tf](./Infra/main.tf) para o "access_key" e "secret_key" para os valores obtidos na conta AWS. [Clique aqui](https://www.msp360.com/resources/blog/how-to-find-your-aws-access-key-id-and-secret-access-key/) para saber como conseguir.

3. O usuário deve criar 3 pares de chaves com os nomes "int-key", "usr-key", e "bot-key" no formato .PEM (Para ser acessado via [SSH](https://rockcontent.com/br/blog/ssh/)).

4. Deve-se criar uma imagem AMI no console da AWS com algumas configurações prévias:
    
    Entre em uma máquina virtual no AWS (Ela deverá ser clonada).

                    $ ssh -i "int-key.pem" ubuntu@<ip-publico>

    Na máquina virtual que acabou de ser acessada:

                    $ sudo apt install net-tools -y

    Deve-se instalar também o pip

                    $ sudo apt install pip

    Para usar os Scripts, precisamos instalar a Lib [Paramiko](https://www.paramiko.org/)

                    $ pip install paramiko

    Por fim, deve instalar o [Nmap](https://nmap.org/)

    Depois disso, deve-se criar um imagem a partir dessa instância criada.

5. Para inciar a infraestrutura, o usuário deve dar terraform apply no diretório [Infra](./Infra). Agora o Cyber Range está funcionando.

Exemplo de ataque:

Na máquina local:
            
            $ python3 ping_attack.py <ip-publico da maq do instrutor>

Como o aluno acessa a máquina:

            $ ssh -i "usr-key.pem" ubuntu@<ip-publico da maq do instruendo>
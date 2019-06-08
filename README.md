# 2Path Interface

## A Chemical network for plant terpenes

## How to use it?

First you need to have installed the MedØlDatschgerl (MØD) version 0.8.0.
Assuming you have [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/) installed, then just pull the image:

`docker pull waldeyr/mod_v0.8.0:v1.0`

Clone this repository repositório

`git clone https://github.com/waldeyr/2PathInterface.git && cd 2PathInterface`

Run the code:

`docker run --rm --volume $(pwd):/home/shared/ --workdir /home/shared/ waldeyr/mod_v0.8.0:v1.0 /home/mod-v0.8.0/bin/mod -f /home/shared/molecules.py -f /home/shared/simulation.py -f /home/shared/printer.py `

The simulation.py is generated by the [index.html](interface/index.html)


### Associated publication 
[Exploring Plant Sesquiterpene Diversity by Generating Chemical Networks](https://www.mdpi.com/2227-9717/7/4/240)




## [PT-BR] Como configurar e rodar as simulacoes?

Assumindo que o [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/) esteja instalado, baixar a imagem Docker:

`docker pull waldeyr/mod_v0.8.0:v1.0`

Clonar este repositório

`git clone https://github.com/waldeyr/2PathInterface.git`

Entrar na pasta

`cd 2PathInterface`

Rodar o Docker compartilhando a pasta local atual (pwd) com a pasta shared do container

`docker run --rm -v $(pwd):/home/shared -it waldeyr/mod_v0.8.0:v1.0 bash`

Ou simplesmente rodar o scipt no docker sem entrar no container

``docker run --rm --volume $(pwd):/home/shared/ --workdir /home/shared/ waldeyr/mod_v0.8.0:v1.0 /home/mod-v0.8.0/bin/mod -f /home/shared/molecules.py -f /home/shared/simulation.py -f /home/shared/printer.py``


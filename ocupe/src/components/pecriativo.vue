<template>

  <section class="">
    <div id="obec-peCriativo">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <img src="../assets/pe-criativo.png" alt="PECriativo" class="img-responsive">
          </div>
          <div class="col-xs-12">
            <p class="text-justify">O Programa Pernambuco Criativo compõe o objeto do convênio entre a
              Fundação do Patrimônio Histórico e Artístico de Pernambuco (Fundarpe), a Universidade
              Federal de Pernambuco (UFPE) e o Ministério da Cultura (MinC). O Convênio tem por objeto a
              instalação e funcionamento do “Pernambuco Criativo” e “Observatório de Economia Criativa”
              (Convênio de Cooperação nº 761926/2011, de 31 de dezembro de 2014). O objetivo é o
              fortalecimento da Economia Criativa no estado.
            </p>
            <p class="text-justify">A execução do objeto do convênio de cooperação técnica e financeira -
              FUNDARPE e UFPE, referente ao PE Criativo, pela convenente Universidade Federal de
              Pernambuco, se dá por meio de ações do Lócus de Investigação em Economia Criativa e seu
              Departamento de Administração (convênio nº 002/2015, processo nº
              01400.041285/2011-50302/2015, pronac: 11-13940).
            </p>
            <p class="text-justify">O Lócus de Investigação em Economia Criativa é um Grupo de pesquisa que
              busca construir conhecimento acerca da economia criativa, que possa subsidiar ações
              acadêmicas, organizacionais e sociais, no contexto da sociedade contemporânea.
            </p>
            <p class="text-justify">O Programa Pernambuco Criativo também realizará oficinas, palestras e
              workshops na Casa da Cultura Luiz Gonzaga – Cela 304, Raio Leste, 2º piso – Santo Antônio –
              Recife.</p>
            <p class="text-justify">Informações: (81) 3184.3020 Acesse o Portal Cultura PE, para obter mais
              informações sobre o PE Criativo:</p>
          </div>
          <div class="col-md-offset-4 col-xs-offset-2 col-sm-offset-3 ">
            <a href="http://www.cultura.pe.gov.br/canal/economiacriativa/pernambuco-criativo-inicia-biro-de-orientacao-na-casa-da-cultura/" class="btn btn-default obec-blue-btn">WebSite</a>
            <a href="https://www.facebook.com/PernambucoCriativo/" class="btn btn-default obec-blue-btn">Facebook</a>
          </div>
        </div>
      </div>
    </div>
  </section>

</template>

<script>
export default {
  name: 'pecriativo'
}
</script>


<style>

:host {
  width: 100%;
}

#obec-peCriativo {
  background-color: #00897b;
  color: #FFFFFF;

}

#obec-peCriativo img {
  padding-top: 25px;
  padding-bottom: 33px;
}

#obec-peCriativo p:last-child {
  padding-bottom: 25px;
}

#obec-peCriativo .row div:last-child {
  padding-bottom: 40px;
}

#obec-peCriativo .row div:last-child a:first-child {
  margin-left: 35px;
  background-color: transparent;
  background-color: #FFFFFF;
  border-color: #FFFFFF;
  color: #222222;
  font-weight: 700;
  box-shadow: 3px 3px 3px 0px #262626;
}

#obec-peCriativo .row div:last-child a:first-child:focus, #obec-peCriativo .row div:last-child a:first-child:hover{
  background-color: #FFFFFF;
  box-shadow: 0px 0px 3px 3px #262626;
}

#obec-peCriativo .row div:last-child a:last-child {
  margin-left: 35px;
  background-color: transparent;
  background-color: #FFFFFF;
  border-color: #FFFFFF;
  color: #222222;
  font-weight: 700;
  box-shadow: 3px 3px 3px 0px #262626;
}

#obec-peCriativo .row div:last-child a:last-child:focus, #obec-peCriativo .row div:last-child a:last-child:hover{
  background-color: #FFFFFF;
  box-shadow: 0px 0px 3px 3px #262626;
}

#obec-peCriativo > div > div > div.col-md-offset-4.col-xs-offset-2.col-sm-offset-3 > a:nth-child(1) {
  padding-right: 3.6em;
}

@media screen and (min-width: 1200px) {
  #obec-peCriativo img {
    margin-left: 13%;
  }
}

@media screen and (min-width: 992px) and (max-width: 1199px) {
  #obec-peCriativo img {
    margin-left: 5%;
  }
  #obec-peCriativo .row div:last-child {
    margin-left: 290px;
  }
}

@media screen and (max-width: 767px) {
  #obec-peCriativo .row div:last-child {
    margin-left: 170px;
  }
}

@media screen and (max-width: 735px) {
  #obec-peCriativo .row div:last-child {
    margin-left: 20%;
  }
}

@media screen and (max-width: 660px) {
  #obec-peCriativo .row div:last-child {
    margin-left: 17%;
  }
}

@media screen and (max-width: 578px) {
  #obec-peCriativo .row div:last-child {
    margin-left: 13%;
  }
}

@media screen and (max-width: 525px) {
  #obec-peCriativo .row div:last-child {
    margin-left: 10%;
  }
}

@media screen and (max-width: 482px) {
  #obec-peCriativo .row div:last-child {
    margin-left: 5%;
  }
}

@media screen and (max-width: 435px) {
  #obec-peCriativo .row div:last-child {
    margin-left: 0;
  }
  #obec-peCriativo > div > div > div.col-md-offset-4.col-xs-offset-2.col-sm-offset-3 > a:nth-child(1) {
    margin-left: 30%;
    margin-bottom: 5%;
  }
  #obec-peCriativo > div > div > div.col-md-offset-4.col-xs-offset-2.col-sm-offset-3 > a:nth-child(2) {
    margin-left: 30%;
  }

}


</style>

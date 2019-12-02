<template>
  <section>
    <div id="obec-about-us">
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-xs-12">
            <img src="../assets/test3.jpg" alt="ObecPE" class="img-responsive">
          </div>
          <div class="col-md-7">
            <h1>O Observatório de Cultura <span>Pernambuco</span></h1>
            <p class="text-justify">é uma plataforma de interesse mútuo, produto de um projeto de pesquisa registrado na Universidade Federal de Pernambuco - UFPE, por docente do Departamento de Ciência da Informação, denominado Observatório de Cultura de Pernambuco, que tem como objetivo geral desenvolver uma plataforma de mediação cultural que contribua com a disseminação, acesso e apropriação de informações, bem como a construção de conhecimentos, que relacionem cultura, economia criativa e economia colaborativa. Portanto, representa o desenvolvimento de um ambiente de pesquisa científica, e de extensão, que permite a ampliação do conhecimento sobre cultura, mediação e protagonismo cultural, com ênfase nos seguimentos criativos e colaborativos da economia, a partir do Estado de Pernambuco.</p>
            <p class="text-justify">A elaboração da plataforma atendeu, também, ao objeto de um convênio entre o Ministério da Cultura (MinC), a Fundação do Patrimônio Histórico e Artístico de Pernambuco (Fundarpe) e a Universidade Federal de Pernambuco (UFPE). O Convênio teve por objeto a instalação e funcionamento do “Pernambuco Criativo” e “Observatório de Economia Criativa” (Convênio de Cooperação nº 761926/2011, de 31 de dezembro de 2014) .</p>
            <p class="text-justify">O ambiente de desenvolvimento do projeto de pesquisa é o Laboratório Líber, com expertise em Curadoria Digital, formalmente reconhecido como unidade de pesquisa da UFPE pela Portaria nº 022.2015-CAC, de 17 de dezembro de 2015. No espaço dessa unidade de pesquisa científica e tecnológica são desenvolvidas investigações, programas e projetos de mediação e gestão da informação, de memória, protagonismo sociocultural, de uso criativo e apropriação de equipamentos culturais, apropriação do espaço urbano, bem como de economia criativa, de economia colaborativa e inovação. </p>
            <p class="text-justify">Portanto, a plataforma, denominada Observatório de Cultura Pernambuco, pretende contribuir com a disseminação, acesso e apropriação de informações e conhecimento crítico, especialmente sobre a economia da cultura, observando a dinâmica do setor no âmbito cultural, social e econômico do país e dos estados, por meio da formação de redes híbridas compostas de pesquisadores, especialistas e os protagonistas culturais.</p>
            <p class="text-justify">Em 2019 a plataforma foi reestruturada , sendo reescrita por uma equipe do curso de computação da Universidade Federal do Ceará.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

</template>

<script>
export default {
  name: 'obecabout'
}
</script>


<style>
#obec-about-us {
  padding-top: 53px;
  padding-bottom: 50px;
  background-color: #1A1E2A;
  color: #FFFFFF;
  opacity: 1;
}

#obec-about-us img {
  display: block;
  width: 100%;
  height: 680px;
  border-radius: inherit;
  border: none;
  padding-top: 25px;
}

#obec-about-us h1 {
  color: #e0e0e0;
  font-weight: 700;
}

#obec-about-us h1 span {
  color: #ff5252;
}

#obec-about-us p {
  font-size: 15px;
  line-height: 1.5em;
}

@media screen and (min-width: 1200px) {
  #obec-about-us .row:first-child {
    padding-bottom: 10px;
  }
}

</style>

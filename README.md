# BI Enterprise em um Ambiente de Service Desk

#### Aluno: Luís Roberto Tavares Trinta (https://github.com/beto30/bi-master_dashboard_service_desk.git)
#### Orientador(/a/es/as): Anderson Silva do Nascimento

---

Trabalho apresentado ao curso [BI MASTER](https://ica.puc-rio.ai/bi-master) como pré-requisito para conclusão de curso e obtenção de crédito na disciplina "Projetos de Sistemas Inteligentes de Apoio à Decisão".

- [Link para o código](https://github.com/beto30/bi-master_dashboard_service_desk.git).

- [Link para a monografia](https://github.com/beto30/bi-master_dashboard_service_desk.git).

---

### Resumo

Este projeto tem o objetivo de propor um Sistema de BI Enterprise que faça a extração de dados a partir do Sistema de Gestão de Serviços OTRS (Open Technology Real Services), 
realize a transformação, validação e limpeza dessas informações, faça a carga em um banco de dados utilizando um modelo multidimensional e disponibilize dashboards para 
coordenadores, gerentes e superintendentes para auxiliar a tomada de decisão desses profissionais que atuam nos níveis estratégicos e táticos da empresa.

O Sistema de Gestão de Serviços OTRS atualmente está sendo utilizado para gerenciar o Service Desk da empresa, o qual dá suporte à diversas disciplinas ITIL, 
tais como Gerenciamento de Mudança, Gerenciamento de Incidentes, Solicitações, Problemas, dentre outras.

Embora o OTRS seja uma excelente ferramenta para gerenciar o ciclo de vida dos tickets resultantes das requisições dos clientes, 
nota-se uma deficiência no que tange a relatórios, dashboards, alertas e demais recursos relacionados a obtenção de informações para apoio a gestão do Service Desk.

O Sistema de BI proposto pretende apresentar uma solução que forneça informações que visem, dentre outros benefícios, uma melhor gestão da equipe de atendentes, 
identificando o balanceamento da carga de trabalho entre os profissionais, identificação de sistemas e serviços que apresentem mais defeitos, de forma que possam ser 
direcionados recursos para realização de manutenções evolutivas em tais sistemas, construção de um banco de dados de soluções para aperfeiçoar o atendimento inicial 
dos incidentes, além de uma série de outros indicadores para auxílio no suporte à decisão.

Nesse trabalho serão utilizados o MySQL, como data source dos dados oriundos do Sistema de Gestão de Serviços OTRS, SQL PowerArchitect para construção do modelo multidimensional,
PostgreSQL, como banco de dados para armazenamento do datawarehouse e stage area, Pentaho Data Integrator para desenvolvimento do ETL e PowerBI na elaboração dos Dashboards.

---

Matrícula: 191.477.023 

Pontifícia Universidade Católica do Rio de Janeiro

Curso de Pós Graduação *Business Intelligence Master*

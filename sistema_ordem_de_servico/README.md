# Aplicativo de Gestão de Ordem de Serviço

## 1 - Contexto e Motivação do Projeto

A ideia inicial deste projeto é um sistema pensado para organizar e controlar o fluxo de pedidos de serviço de chaveiro da Câmara Municipal de Salvador, mas sua estrutura serve também para outros tipos de serviços que possuam fluxos semelhantes.

### 1.1 - Fluxo Normal

As solicitações de demandas/pedidos chegam dos setores e/ou funcionários. A solicitação em seu fluxo normal deve ir para o Setor de Manutenção que então encaminha um e-mail para o fiscal do contrato com uma Ordem de serviço em PDF, e a partir disso o fiscal do contrato encaminha a demanda para o prestador que é responsável por executar o serviço.

### 1.2 - Problema

No entanto, muitos pedidos fogem deste fluxo padrão, onde algumas demandas chegam diretamente ao coordenador que, por sua vez, passa diretamente para o prestador de serviço, pulando todo o fluxo de registro do pedido por e-mail. Às vezes ocorre também dos pedidos chegarem diretamente ao prestador de serviço por aqueles funcionários que já o conhece e tem proximidade.

Outra situação recorrente é pedidos que chegam com uma especificação, mas no momento da execução há outras especificações adicionais, ou até mesmo totalmente diferente da solicitação original.

Dessa forma, quando o controle sai do fluxo padrão de chegar pelo e-mail, a única forma de controlar o que foi executado é por meio anotações em papel que o próprio prestador faz no momento da execução, mas de forma muitas vezes falha, se perde o registro do que foi feito ficando dependendo da memória do prestador de serviço.

## 2 - Solução

A aplicação tem o principal objetivo de concentrar todos as demandas independentes da sua fonte originária, trazendo controle de autorização e pós execução do serviço, permitindo também identificar exatamente o que foi feito ao final da execução. Por se tratar de uma prestação de serviço de natureza in loco, faz mais sentido ser um aplicativo mobile, onde os usuários envolvidos possam facilmente operacionalizar com um Smartphone, sendo sincronizado em tempo real.

### 2.1 - Funcionalidades

- **ABERTURA DE PEDIDO (NOVO PEDIDO)**
  - A abertura de novos pedidos no app pode ser feita por qualquer usuário da aplicação devidamente autenticado.
  - Formulário de Novo Pedido
    - Nome do solicitante do serviço (Obrigatório)
    - Número/Ramal de contato (Opcional)
    - Local de execução do Serviço (Obrigatório)
    - Data e Hora da criação do pedido (Auto gerada)
    - Descrição do serviço a ser executado (Obrigatório)
    - Imagem do local do serviço ou item a ser reparado (Opcional)

- **PRÉ-AUTORIZAÇÃO DO PEDIDO (AGUARDANDO AUTORIZAÇÃO)**
  - Os novos pedidos abertos devem ir para status de pré-autorização, onde apenas os usuários com permissão poderão aprovar o pedido.
  - O usuário com esta permissão pode:
    - Autorizar pedido: Nesta ocasião o pedido chegará ao prestador de serviço, onde ele será notificado sobre novo serviço aguardando execução
    - Negar pedido: O pedido vai para Nesta ocasião o pedido não chegará ao prestador de serviço, e o usuário que fez a abertura do pedido será notificado sobre a recusa com o motivo.
    - Pedir Informações Adicionais: Nesta ocasião, o responsável pela autorização irá informar as informações extra necessárias e o usuário que abriu o pedido irá ser notificado para apresentar mais informações. Ele sinaliza que o pedido está em um estado de espera até que as informações adicionais sejam fornecidas pelo usuário que abriu o pedido.
    - Colocar em Espera: Este status indica que o pedido está temporariamente pausado ou em espera. Pode ser usado em situações onde há necessidade de análise adicional, espera de recursos, ou outras circunstâncias que impedem a autorização imediata do pedido.
  - O usuário autorizador terá a op

ção de já mapear os serviços do objeto do contrato com a solicitação do pedido, caso seja possível identificar já de início quais serviços do objeto serão executados. Caso contrário, os serviços do contrato deverão ser especificados pelo prestador posteriormente.
  - Pedidos abertos por usuário com esta permissão serão automaticamente autorizados e irá para o prestador do serviço.
    - Mostrar opção de já mapear os itens do objeto de contrato durante tela de abertura.

- **EXECUÇÃO DO SERVIÇO (AGUARDANDO EXECUÇÃO)**
  - Após pré-autorizados, o pedido irá aparecer para o prestador do serviço, onde ele poderá ver a lista de todos pedidos para serem executados, podendo efetuar algumas ações sobre os pedidos:
    - Colocar pedidos em status de “Em execução”: Nesta ocasião o prestador do serviço pode precisar recolher o material para executar fora do local ou precisar de mais de um dia para finalizar a execução.
    - Adicionar itens do objeto do contrato e sua respectiva quantidade executada.
    - Finalizar pedido
      - Serviço executado com sucesso: O pedido só pode ser considerado executado com sucesso após:
        - Inserido os itens do objeto do contrato que foram executados
        - Ter anuência do solicitante sobre o recebimento/finalização do serviço
      - Serviço não executado
        - Apresentar motivo (Opcional)

- **FATURAMENTO**
  - Esta funcionalidade é exclusiva do usuário prestador de serviço, onde pode gerar/exibir o relatório de serviços executados no período determinado, podendo incluir:
    - Valor total da Fatura por período
    - Valor total e quantidade por item do objeto do contrato
    - Ordem de serviço de cada pedido incluindo:
      - itens do objeto executados
      - valor de cada item
      - quantidade de itens
      - valor total por item
      - valor total do pedido
  - Idealmente será possível exportar este relatório em PDF.

## 3 - Interfaces

O aplicativo deve apresentar as interfaces de acordo com o papel de permissões do usuário logado.

- **Usuário padrão**: Este é o usuário considerado cliente, o qual apenas tem a permissão de fazer abertura de pedido e acompanhar pedidos abertos por ele.
  - Telas
    - Meus pedidos
    - Abrir novo pedido

- **Usuário supervisor**: Este usuário controla quais pedidos são autorizados. Além disso possui permissão para visualizar e emitir relatórios de pedidos executados e métricas mais avançadas quando disponíveis.
  - Telas
    - Todos os pedidos
    - Abrir novo pedido
    - Autorização de pedidos
    - Relatório de pedidos

- **Usuário prestador de serviço**: Este usuário é o que executa os serviços, sua tela é inicial é focada nos serviços que tem para serem executados. Além disso possui acesso à funcionalidade de faturamento. O prestador de serviço também poderá abrir novo pedido, ocasião que resolve o problema de pedidos que são feitos diretamente a ele. Este pedido assim como os outros, deverão ser autorizados pelo usuário competente.
  - Telas
    - Pedidos
      - A executar
      - Em execução
      - Finalizados
    - Ações do pedido em execução
    - Faturamento
    - Abrir novo pedido

- **Usuário administrador**: Este usuário tem acesso total às funcionalidades da aplicação. Ele pode também pode definir os papéis de outros usuários e pode executar as ações de todos os outros papéis
  - Telas
    - Alterar papéis de usuários
    - Todos os pedidos
    - Abrir novo pedido
    - Autorização de pedidos
    - Relatório de pedidos
    - Pedidos
      - A executar
      - Em execução
      - Finalizados
    - Ações do pedido em execução
    - Faturamento

---

## Status: Em Desenvolvimento
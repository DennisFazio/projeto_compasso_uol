Olá, Tudo bem ?

Segue meu modelo para o teste apresentado.
Espero muito que agrade.
Tentei mostrar algumas tecnicas que conheço. 
Mesmo que talvez fique meio estranho algumas situações como um esquema de cenario com apenas um exemplo. Nesse caso seria melhor usar somente o cenario e a informação no step


Para rodar o projeto Web utilizar 'cucumber -t @web_front -p Ambiente_Prod'

Para rodar o projeto Web Service API 'cucumber -t @webservice -p Ambiente_Prod'

O relatório HTML com resultado é gerado na pasta: \logs\html
Os screenshots estão na pasta: \logs\screenshots

Obs.: As classes estão instanciados no arquivo 'page_helper' e não no hooks. Acho que fica mais organizado assim.
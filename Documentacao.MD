Documentação do Projeto MVP: Chatbot de Atendimento para Restaurante
Nome do Projeto: Chatbot Inteligente para Suporte Nível 0 – Atendimento de Restaurante
URL do MVP: https://incomparable-gumption-68ff3a.netlify.app/
Versão: 0.1 (MVP)
Data: 9 de maio de 2025

## 1. Introdução

Este documento descreve o projeto MVP (Minimum Viable Product – Produto Mínimo Viável) de um chatbot inteligente desenvolvido para oferecer suporte de nível 0 aos clientes de um restaurante. O objetivo principal é automatizar respostas a consultas frequentes, facilitar o processo de pedidos e encaminhar situações mais complexas para atendentes humanos, visando otimizar a eficiência operacional e a experiência do cliente.

## 2. Objetivo do Projeto

Definir a documentação mínima para orientar desenvolvedores, QA e partes interessadas sobre o funcionamento e os limites deste MVP de chatbot, de modo a:

- Garantir entendimento claro das funcionalidades entregues

- Facilitar testes e validação

- Servir de base para futuras evoluções

## 3. Contexto

Restaurantes modernos buscam canais de atendimento ágeis para melhorar a experiência do cliente e reduzir carga de trabalho da equipe. Este MVP explora um chatbot inteligente que automatiza tarefas de suporte nível 0, como consulta de menu, status de pedido e promoções, liberando atendentes humanos para casos complexos.

## 4. Escopo do MVP

Incluído:

- Consulta de cardápio (seções, pratos do dia, valores)
- Consulta de horários de funcionamento
- Consulta de promoções ativas
- Realização de pedidos por delivery via chatbot (escolha de itens)
- Status de pedidos em andamento (tempo de preparo, previsão de entrega)
- Encaminhamento “mock” a atendente humano para alterações de pedido ou problemas de pagamento

Excluído (fora do MVP)

- Pagamento integrado (somente simulação)
- Integração real com sistema de PDV ou ERP
- Analytics e relatórios de uso
- Fallback de canal (e-mail, SMS)

## 5. Funcionalidades Principais

5.1. Menu Dinâmico

- Listagem completa das categorias do cardápio
- Destaque para Prato do Dia

  5.2 Pedidos

- Montagem ordens de compras
- Perguntas sobre adicionar produtos a compra e mostrar o menu

  5.3 Status de Pedido

- Consulta do tempo de preparo
- Previsão de chegada

  5.4 Encaminhamento a Humano

- “Mock” de transferência para atendente em chat real

## 6. Fluxo de Interação Principal (Exemplo)

Cliente: "Hi"
Chatbot: "Hi! Welcome to GourmetAI. How can I assist you today? Would you like to see our menu or have any questions about our offerings?"
Cliente: "Cardápio"
Chatbot: "Of course! Here are the current menu categories at GourmetAI: - Starters - Main Courses - Desserts - Drinks Is there a specific category you'd like to explore, or do you have any dietary preferences I should consider for recommendations?."
Cliente: "starters"
Chatbot: "Great choice! For starters, I would recommend trying our popular Truffle Mushroom Risotto Arancini or the Grilled Shrimp Skewers with a lemon garlic aioli. Both options offer a delicious combination of flavors that are sure to please your taste buds. If you're a fan of seafood, the Shrimp Ceviche is also a refreshing option. Let me know if you need any more information or if you'd like to place an order."
Cliente: "I want order now"
Chatbot: "Great choice! To place an order, please let me know which starter you would like to order and if you have any dietary preferences or modifications. Once you've decided, I can assist you with the ordering process."
Cliente: "Grilled Shrimp Skewers with a lemon garlic aioli"
Chatbot: "Wonderful choice! The Grilled Shrimp Skewers with lemon garlic aioli are a delicious option. I will add that to your order. Is there anything else you would like to add to your order, or are you ready to proceed with checkout?"
Cliente: "I want to add the main course. What do you have ?"
Chatbot: "For our main courses, I recommend trying our popular Grilled Salmon with a citrus herb butter or the Filet Mignon with a red wine reduction sauce. Both dishes offer a perfect balance of flavors and are sure to satisfy your appetite. If you're looking for a vegetarian option, the Wild Mushroom Risotto is a savory choice. Would you like to add one of these main courses to your order, or do you have any dietary preferences I should consider for recommendations?"
Cliente:"I want the Grilled Salmon with a citrus herb butter"
Chatbot:"Excellent choice! The Grilled Salmon with citrus herb butter is a customer favorite. I will add that to your order along with the Grilled Shrimp Skewers. Is there anything else you would like to add, or are you ready to proceed with checkout?"
Cliente:"Proceed with the checkout"
Chatbot:"Great! I have added the Grilled Salmon with citrus herb butter and the Grilled Shrimp Skewers to your order. Your total comes to $XX.XX. Would you like to add any drinks or desserts to complete your meal, or are you ready to proceed with checkout?"
Cliente:"Proceed with the checkout"
Chatbot:Perfect! Your order for the Grilled Salmon with citrus herb butter and the Grilled Shrimp Skewers has been processed. Your total comes to $XX.XX. We offer delivery within a 5-mile radius with an estimated delivery time of 30-45 minutes. Is there anything else I can assist you with, or would you like to provide your delivery details to complete the order?"
Cliente:"No, thank you"
Chatbot:"Thank you for choosing GourmetAI! Your order for the Grilled Salmon with citrus herb butter and the Grilled Shrimp Skewers will be delivered within 30-45 minutes. If you have any questions or need further assistance in the future, feel free to reach out. Enjoy your meal!"

(Mais tarde) Cliente: "Hi, I want to know about my order status?"
Chatbot: "Hello! Thank you for reaching out. I can help you track your order. Please provide me with what your order or the name associated with the order so I can provide you with the most up-to-date information."
Cliente: "My order is the Grilled Salmon with citrus herb butter and the Grilled Shrimp Skewers"
Chatbot:"Thank you for providing your order details. Let me check the status for you. Your order for the Grilled Salmon with citrus herb butter and the Grilled Shrimp Skewers is currently being prepared and is on its way for delivery. You can expect it to arrive within the estimated time frame of 30-45 minutes. If you have any more questions or need further assistance, feel free to let me know."

## 7. Tecnologias Utilizadas

Frontend: Angular (Netlify)
Backend (simulado): funções serverless / mocks em JavaScript
Base de Conhecimento: JSON estático com cardápio, promoções e regras de negócio
Conexão: API REST para endpoints de consulta e pedido (mocked)
Deploy: Netlify (frontend)

## 8. Limitações Conhecidas do MVP

Encaminhamento Simulado: A funcionalidade de encaminhar para um atendente humano é apenas uma simulação de mensagem, sem integração real com um sistema de suporte.
Persistência de Dados Limitada: Informações de pedidos e preferências do cliente provavelmente não são armazenadas de forma persistente ou são mantidas apenas durante a sessão ativa no navegador.
Processamento de Linguagem Natural (NLU) Básico: A capacidade de compreensão do chatbot pode ser restrita a frases e comandos específicos, com menor flexibilidade para variações de linguagem natural.
Ausência de Integrações Reais: Não há integrações com sistemas de Ponto de Venda (PDV), gateways de pagamento ou sistemas de gerenciamento de cozinha/delivery.
Segurança: As medidas de segurança para dados do usuário são básicas, condizentes com um MVP focado na funcionalidade principal.

## 9. Próximos Passos

Implementar integração real com uma plataforma de atendimento humano.
Desenvolver um backend para persistência de dados de pedidos, clientes e cardápio.
Aprimorar o Processamento de Linguagem Natural (NLU) para uma interação mais fluida e natural.
Integrar com sistemas de PDV para automatizar o registro de pedidos.
Integrar com gateways de pagamento para processar transações online.
Criar um painel administrativo para gerenciamento de conteúdo (cardápio, promoções) e configurações do chatbot.
Coletar feedback dos usuários para identificar pontos de melhoria e novas funcionalidades.

## 10. Acesso ao MVP

O MVP do chatbot pode ser acessado e testado através do seguinte link:
https://incomparable-gumption-68ff3a.netlify.app/

Para interagir, basta abrir o link em um navegador e iniciar a conversa com o chatbot através da interface de chat disponível.

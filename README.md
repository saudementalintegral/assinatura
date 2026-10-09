# Sistema de Onboarding e Assinatura Digital | Dra. Tânia Abreu - Psiquiatria Integrativa

Este projeto recria fielmente a identidade visual e os documentos do **Plano de Cuidado Integrativo** e **Programa de Saúde Mental Integrativa**, oferecendo uma experiência premium para o paciente ler, concordar e assinar digitalmente seus termos de acolhimento e compromisso clínico.

---

## 📋 Funcionalidades Principais

1. **Design de Alta Fidelidade**:
   - Paleta de cores exclusiva: Azul Petróleo Profundo (`#0A243A`), Dourado Champanhe Nobre (`#BD9B60`) e fundo off-white/papel pergaminho (`#FDFBF7`).
   - Tipografia nobre com fontes *Cinzel*, *Cormorant Garamond* e *Montserrat*.
   - Monograma TAC e ornamentos vetoriais nítidos em qualquer resolução.
   - Assinatura manuscrita estilizada da Dra. Tânia Abreu.

2. **Módulo de Assinatura Digital do Paciente**:
   - **Formulário de Cadastro Rápido**: Nome completo, CPF (com máscara automática), WhatsApp e e-mail.
   - **Canvas Interativo**: Permite ao paciente assinar ou rubricar na tela touch do smartphone (com o dedo) ou com o mouse no computador.
   - **Registro de Autenticidade**: Gera carimbo de data/hora oficial e código de autenticação único (`AUTH-XXXX-XXXX`).
   - **Acoplamento Automático**: A assinatura do paciente é inserida diretamente no rodapé do documento de compromisso.

3. **Pronto para Impressão & Exportação em PDF**:
   - Diagramação rigorosamente ajustada para **formato A4 portrait** sem quebras indesejadas de página (`@media print`).
   - Botão direto **"Imprimir / Gerar PDF"** na barra superior (ou via `Ctrl + P`).
   - Em modo de impressão, botões e barras de controle somem automaticamente, restando apenas as folhas limpas e profissionais.

---

## 🚀 Como Executar

### 1. No computador (Uso Local)
Basta dar um duplo clique no arquivo [`index.html`](file:///c:/Users/paulo/Downloads/Assisnatura%20Digital/index.html) para abri-lo em qualquer navegador (Google Chrome, Edge, Safari, Firefox).

### 2. Para envio no WhatsApp dos Pacientes (Hospedagem Web Gratuita)
Você pode subir esta pasta em serviços gratuitos como:
- **Vercel** (arrastar a pasta no dashboard ou conectar via Git)
- **Netlify Drop** (basta arrastar a pasta na página [app.netlify.com/drop](https://app.netlify.com/drop))
- **GitHub Pages**

Assim, a clínica terá um link como `https://clinica-dratania.vercel.app` para enviar via WhatsApp para o paciente assinar antes da primeira consulta.

---

## ⚙️ Como Personalizar os Dados Médicos

Se desejar atualizar o CRM, RQE ou telefone:
1. Abra o arquivo `index.html`.
2. Procure por `CRM 104951 | RQE 82888` e altere para o número de registro desejado.
3. Se precisar alterar o e-mail ou dados de contato, basta editar o texto diretamente.

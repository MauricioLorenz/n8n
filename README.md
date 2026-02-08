# Projeto n8n Local

Este projeto contém uma instalação local do n8n.

## Como iniciar

Após a instalação das dependências, você pode iniciar o n8n com o seguinte comando:

```bash
npm start
```

Isso iniciará o servidor do n8n na porta padrão (5678).

## Configuração

O n8n pode ser configurado através de variáveis de ambiente. Você pode criar um arquivo `.env` na raiz do projeto para definir configurações personalizadas (se necessário).

Exemplo de `.env`:

```
N8N_PORT=5678
N8N_PROTOCOL=http
N8N_HOST=localhost
```

## Dados

Por padrão, os dados do n8n (workflows, credenciais, etc.) são salvos no diretório do usuário (`~/.n8n`).
Se desejar manter os dados dentro deste diretório do projeto, altere o script `start` no `package.json` para definir a variável `N8N_USER_FOLDER`.

Exemplo:
```json
"start": "set N8N_USER_FOLDER=./n8n_data && n8n start"
```
(No Windows PowerShell: `$env:N8N_USER_FOLDER='./n8n_data'; npx n8n start`)

## Notas

- A primeira execução pode levar alguns instantes para gerar as chaves de criptografia.
- Mantenha o arquivo `package.json` e `package-lock.json` atualizados.

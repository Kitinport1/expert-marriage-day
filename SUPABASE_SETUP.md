# 📚 Guia de Configuração - Supabase

## Passo 1: Criar Conta no Supabase

1. Acesse [supabase.com](https://supabase.com)
2. Clique em **"Start your project"**
3. Faça login com GitHub ou email
4. Crie uma nova organização (ou use existente)

## Passo 2: Criar um Novo Projeto

1. Clique em **"New Project"**
2. Preencha:
   - **Name**: `expert-marriage-day`
   - **Database Password**: Crie uma senha forte
   - **Region**: Escolha próximo de seus usuários (ex: South America - São Paulo)
3. Clique **"Create new project"** (aguarde 2-3 minutos)

## Passo 3: Adicionar Chaves no Código

1. Na dashboard do Supabase, vá para **Settings > API**
2. Copie:
   - **Project URL** (ex: `https://xxxxx.supabase.co`)
   - **anon public key** (começa com `eyJ...`)

3. Edite `expert-marriage-day/index.html` e substitua:

```javascript
const SUPABASE_URL = 'https://xxxxx.supabase.co';  // Sua Project URL
const SUPABASE_KEY = 'eyJ...';                      // Sua anon public key
```

## Passo 4: Criar Tabelas

No Supabase, vá para **SQL Editor** e execute este script:

```sql
-- Tabela de Fotos
CREATE TABLE photos (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  name text NOT NULL,
  path text NOT NULL UNIQUE,
  url text NOT NULL,
  created_at timestamp DEFAULT now()
);

-- Tabela de Mensagens
CREATE TABLE messages (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  name text NOT NULL,
  message text NOT NULL,
  created_at timestamp DEFAULT now()
);
```

## Passo 5: Criar Storage Bucket

1. Vá para **Storage** no Supabase
2. Clique **"New Bucket"**
3. Nome: `expert-marriage-day`
4. Deixe **Public bucket** ativado (checkbox ✓)
5. Clique **"Create bucket"**

## Passo 6: Configurar Políticas RLS (Row Level Security)

No **SQL Editor**, execute:

```sql
-- Habilitar RLS
ALTER TABLE photos ENABLE ROW LEVEL SECURITY;
ALTER TABLE messages ENABLE ROW LEVEL SECURITY;

-- Permitir SELECT (anônimo pode ver) - Fotos
CREATE POLICY "photos_select" ON photos
  FOR SELECT USING (true);

-- Permitir INSERT (anônimo pode inserir) - Fotos
CREATE POLICY "photos_insert" ON photos
  FOR INSERT WITH CHECK (true);

-- Permitir SELECT - Mensagens
CREATE POLICY "messages_select" ON messages
  FOR SELECT USING (true);

-- Permitir INSERT - Mensagens
CREATE POLICY "messages_insert" ON messages
  FOR INSERT WITH CHECK (true);
```

## Passo 7: Configurar Storage Policies

1. Vá para **Storage > expert-marriage-day**
2. Clique em **Policies** (ícone de escudo)
3. Clique **"New Policy" > "For full customization"**
4. Adicione estas políticas:

**Download (SELECT):**
```
Authenticated and Anonymous users can download files
```

**Upload (INSERT):**
```
Authenticated and Anonymous users can upload files
```

## Passo 8: Testar a Conexão

1. Abra a página em `http://localhost:3000`
2. O banner de configuração deve desaparecer
3. Teste:
   - **Álbum**: Envie uma foto
   - **Mensagens**: Envie uma mensagem

## 🆘 Troubleshooting

### Banner de configuração ainda aparece?
- Verifique se `SUPABASE_URL` está preenchido corretamente
- Confirme que não tem `'COLE AQUI'` no código

### Erro ao enviar foto?
- Verifique se o bucket `expert-marriage-day` é **público**
- Confirme as políticas RLS do Storage

### Erro ao enviar mensagem?
- Verifique se a tabela `messages` existe
- Confirme a política RLS de INSERT na tabela

### Erro de CORS?
- No Supabase, vá para **Settings > API > CORS Allowed Origins**
- Adicione seu domínio de deploy (ex: `https://expert-marriage.railway.app`)

## 📝 Variáveis de Ambiente (Produção)

Para produção no Railway, adicione no **Settings > Environment Variables**:

```
SUPABASE_URL=https://xxxxx.supabase.co
SUPABASE_KEY=eyJ...
```

Depois atualize o código para ler dessas variáveis:

```javascript
const SUPABASE_URL = import.meta.env.VITE_SUPABASE_URL || '...';
const SUPABASE_KEY = import.meta.env.VITE_SUPABASE_KEY || '...';
```

---

Pronto! Sua aplicação está conectada ao Supabase! 🎉

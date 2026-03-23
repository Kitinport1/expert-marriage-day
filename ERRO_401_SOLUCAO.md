# 🆘 ERRO 401 - Chave Inválida

## ❌ Problema

```
Error: {"message":"Invalid API key","hint":"Double check your Supabase `anon` or `service_role` API key."}
```

Sua chave do Supabase **está errada, expirada ou inválida**.

## ✅ Solução em 3 Passos

### **1️⃣ Acessar o Supabase Dashboard**

1. Abra: https://app.supabase.com
2. Login com suas credenciais
3. Selecione o projeto **expert-marriage-day**

### **2️⃣ Encontrar as Credenciais Corretas**

No menu esquerdo, clique em **Settings**:
```
Dashboard Home
  ├── Settings ← CLIQUE AQUI
  │   ├── General
  │   ├── API ← CLIQUE AQUI
  │   └── ...
  └── ...
```

Em **Settings > API**, você vai ver:

```
╔═════════════════════════════════════════╗
║ PROJECT SETTINGS                        ║
╠═════════════════════════════════════════╣
║                                         ║
║ Project URL                             ║
║ https://xxxxx.supabase.co               ║  ← COPIE ESTA
║                                         ║
║ API KEYS AND TOKENS                     ║
║                                         ║
║ anon public                             ║
║ eyJ0eXAiOiJKV1QiLCJhbGciOi...          ║  ← COPIE ESTA
║                                         ║
║ service_role (use only on server)       ║
║ eyJ0eXAiOiJKV1QiLCJhbGciOi...          ║  ← NÃO USE ESTA
║                                         ║
╚═════════════════════════════════════════╝
```

**⚠️ IMPORTANTE:** Use o **`anon public`**, não o `service_role`!

### **3️⃣ Atualizar o Código**

Edite `expert-marriage-day/index.html` e procure por (linha ~610):

```javascript
const SUPABASE_URL = 'https://egtfxbelgeiyvpktosjs.supabase.co';
const SUPABASE_KEY = 'b_publishable_Rgm6BrWhvNEiKimoEFz0hg_jLQeYZm6';
```

Substitua pelos seus valores:

```javascript
const SUPABASE_URL = 'https://[SEU_PROJECT].supabase.co';
const SUPABASE_KEY = 'eyJ0eXAiOiJKV1QiLCJhbGciOi[SUA_CHAVE]';
```

## 📝 Validação

Suas credenciais devem ter este formato:

✅ **Project URL**: Começa com `https://` e termina com `.supabase.co`
- Exemplo: `https://abcdefgh1234.supabase.co`
- ❌ ERRADO: `https://supabase.co` (sem projeto)
- ❌ ERRADO: `supabase.co` (sem https)

✅ **Anon Public Key**: Começa com `eyJ`
- Exemplo: `eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...`
- ❌ ERRADO: `eyJhbGc...` (começa diferente)
- ❌ ERRADO: `sk_test_...` (é uma chave diferente)

## 🔍 Se Ainda Não Funcionar

1. Verifique se o projeto **realmente existe** no Supabase
2. Confirme que a chave não foi regenerada
3. Tente criar uma **nova chave**:
   - Em **Settings > API**, clique em "Regenerate" (gera nova chave)
   - Use a chave recém-gerada

## ✅ Testando Após Atualizar

1. Atualize a página no navegador: **Ctrl + R** (Linux/Windows) ou **Cmd + R** (Mac)
2. O banner vermelho deve desaparecer
3. Tente enviar uma foto no álbum
4. Tente enviar uma mensagem

Se ainda der erro, abra o console (F12) e me mande a mensagem exata do erro!

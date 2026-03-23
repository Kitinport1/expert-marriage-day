# 💍 Expert Marriage Day

Site elegante para casamento - Lauane & Carolina · 28 de Março de 2026

## ✨ Características

- 📱 **100% Responsivo** - Funciona em mobile, tablet e desktop
- 📸 **Álbum Compartilhado** - Convidados podem enviar fotos
- 💬 **Livro de Mensagens** - Deixar recados e desejos
- 🎂 **Cronograma Detalhado** - Timeline do evento
- 🍽️ **Cardápio** - Menu completo do almoço
- 🎨 **Design Elegante** - Cores refinadas e tipografia sofisticada
- ⚡ **Leve e Rápido** - HTML/CSS/JS puro, sem frameworks heavyweights

## 🚀 Quick Start

### Desenvolvimento Local

```bash
cd expert-marriage-day
npm install
npm start
# Abra http://localhost:3000
```

### Configurar Banco de Dados

Siga o guia completo em [SUPABASE_SETUP.md](SUPABASE_SETUP.md) para:
1. Criar conta no Supabase
2. Criar tabelas (photos, messages)
3. Configurar Storage Bucket
4. Adicionar chaves no código

## 📁 Estrutura

```
expert-marriage-day/
├── index.html              # Página principal (HTML + CSS + JS)
├── package.json            # Dependências (Node.js)
├── Dockerfile              # Build para produção
├── assets/                 # Imagens e ícones
│   ├── favicon-*
│   └── android-chrome-*
└── .env.example            # Template de variáveis de ambiente
```

## 🔧 Tecnologias

- **Frontend**: HTML5, CSS3 (Grid, Flexbox, Animations), Vanilla JavaScript
- **Backend**: Supabase (PostgreSQL + REST API)
- **Storage**: Supabase Storage
- **Deploy**: Railway (Docker)
- **Icons**: Bootstrap Icons

## 🎨 Seções

### Hero
Introdução elegante com nome do casal, data e poesia

### Navegação
Sticky nav com 4 abas: Cronograma, Cardápio, Álbum, Mensagens

### Cronograma
Timeline visual dos horários do evento com detalhes

### Cardápio
Seções de Aperitivos, Almoço, Bebidas e Sobremesa

### Álbum
Upload de fotos com preview e galeria compartilhada

### Mensagens
Formulário para deixar recados e parede com mensagens

### Rodapé
Informações finais e links úteis

## 🛠️ Desenvolvimento

### Adicionar nova seção

1. Crie uma `<section class="sec" id="nova-secao">`
2. Atualize a navegação em `.nav__tab`
3. Adicione estilos em `<style>`
4. Teste em diferentes tamanhos

### Customizar cores

Edite as variáveis CSS no `<style>`:
```css
:root{
  --cream:#F8F4EE;
  --parch:#EFE7D8;
  --terra:#A14B38;
  --deep: #7A2A38;
  --gold: #C9913A;
  --ink:  #1E1510;
  --muted:#806558;
}
```

### Responsividade

Três breakpoints implementados:
- **Mobile**: até 480px
- **Tablet**: 481px - 768px
- **Desktop**: 1024px+

## 📝 Deploy

### Railway

```bash
git push origin main
# Railway detect Dockerfile automaticamente
# Deploy completo em ~2 minutos
```

### Variáveis de Ambiente (Railway)

1. Vá para Railway Settings
2. Adicione `SUPABASE_URL` e `SUPABASE_KEY`
3. Redeploy

## 📞 Suporte

Para problemas com:
- **Supabase**: Veja [SUPABASE_SETUP.md](SUPABASE_SETUP.md)
- **Deploy**: Verifique logs no Railway
- **Responsividade**: Teste em devtools (F12 > Device Toggle)

## 📄 Licença

Projeto privado para Lauane & Carolina · 2026

---

**Criado com ❤️ para o casamento mais especial do ano!**

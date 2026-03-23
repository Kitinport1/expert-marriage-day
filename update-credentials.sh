#!/bin/bash
# Script para atualizar credenciais do Supabase

echo "🔑 ATUALIZADOR DE CREDENCIAIS SUPABASE"
echo "======================================"
echo ""
echo "Abra: https://app.supabase.com"
echo "Vá para: Settings > API"
echo ""

read -p "Cole seu Project URL (ex: https://xxxxx.supabase.co): " SUPABASE_URL
read -p "Cole seu Anon Public Key (começa com eyJ): " SUPABASE_KEY

# Validar URL
if [[ ! $SUPABASE_URL =~ ^https:// ]]; then
  echo "❌ URL inválida! Deve começar com https://"
  exit 1
fi

# Validar chave
if [[ ! $SUPABASE_KEY =~ ^eyJ ]]; then
  echo "❌ Chave inválida! Deve começar com eyJ"
  exit 1
fi

# Atualizar no arquivo
sed -i "s|const SUPABASE_URL = '.*'|const SUPABASE_URL = '$SUPABASE_URL'|g" expert-marriage-day/index.html
sed -i "s|const SUPABASE_KEY = '.*'|const SUPABASE_KEY = '$SUPABASE_KEY'|g" expert-marriage-day/index.html

echo ""
echo "✅ Credenciais atualizadas com sucesso!"
echo ""
echo "Próximos passos:"
echo "1. Recarregue a página no navegador (Ctrl+R)"
echo "2. Teste o upload de fotos"
echo "3. Teste o envio de mensagens"

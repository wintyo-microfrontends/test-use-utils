if [ -z $GITHUB_PKG_TOKEN ]; then
  echo "GITHUB_PKG_TOKENの環境変数がありません"
  exit -1
fi

sed -e "s/\${GITHUB_PKG_TOKEN}/$GITHUB_PKG_TOKEN/" ./scripts/.npmrc.template > .npmrc

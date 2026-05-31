FROM c4illin/convertx:latest

USER root:root

RUN (groupadd nobody || true) && (useradd -g nobody nobody || true)

COPY overlay/ /

COPY --from=rexezugebuild/appservicelauncher /.AppServiceLauncher /.AppServiceLauncher

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["bun", "run", "dist/src/index.js"]

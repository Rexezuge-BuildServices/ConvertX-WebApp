FROM c4illin/convertx:latest

USER root:root

RUN (groupadd nobody || true) && (useradd -g nobody nobody || true)

COPY --from=rexezugebuild/appservicelauncher /.AppServiceLauncher /.AppServiceLauncher

ENV WEBSITES_PORT=3000

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["bun", "run", "dist/src/index.js"]

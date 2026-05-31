FROM c4illin/convertx:latest

USER root:root

COPY --from=rexezugebuild/appservicelauncher /.AppServiceLauncher /.AppServiceLauncher

ENV WEBSITES_PORT=3000

ENTRYPOINT ["/.AppServiceLauncher/launcher.sh"]

CMD ["bun", "src/index.ts"]

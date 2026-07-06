FROM chromadb/chroma:0.5.20

ENV IS_PERSISTENT=TRUE
ENV PERSIST_DIRECTORY=/chroma/chroma_data
ENV ANONYMIZED_TELEMETRY=FALSE

EXPOSE 8000

CMD ["sh", "-c", "chroma run --host 0.0.0.0 --port ${PORT:-8000} --path /chroma/chroma_data"]
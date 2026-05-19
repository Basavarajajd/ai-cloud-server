FROM ubuntu:22.04

RUN apt update && apt install -y curl

RUN curl -fsSL https://ollama.com/install.sh | sh

RUN ollama pull qwen2.5-coder:1.5b
RUN ollama pull deepseek-coder:1.3b

EXPOSE 11434

CMD ["ollama","serve"]

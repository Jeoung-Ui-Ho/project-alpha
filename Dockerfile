# Dockerfile
# 변경 전: FROM python:3.9-slim-buster
# 변경 후: Debian 10 (buster) 대신 Debian 12 (bookworm) 기반의 slim 이미지를 사용합니다.
# 또는 더 최신 버전을 원하시면 3.10, 3.11 등으로 변경하셔도 됩니다.
FROM python:3.9-slim-bookworm
    
# 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app
    
# 현재 디렉토리의 모든 파일(app.py, requirements.txt 등)을 /app 디렉토리로 복사합니다.
COPY . /app
    
# requirements.txt에 명시된 파이썬 패키지들을 설치합니다.
RUN pip install --no-cache-dir -r requirements.txt
    
# 5000번 포트를 외부에 노출하도록 설정합니다. (정보성)
EXPOSE 5000
    
# 컨테이너가 시작될 때 Flask 애플리케이션을 실행하는 명령입니다.
CMD ["python", "app.py"]
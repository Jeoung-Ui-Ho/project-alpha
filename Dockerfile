# Dockerfile
# 공식 Python 3.9 slim-buster 이미지를 베이스로 사용합니다.
FROM python:3.9-slim-buster
    
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
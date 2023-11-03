# 使用官方Python运行时作为父镜像
FROM python:3.8

# 设置工作目录
WORKDIR /usr/src/app

# 将当前目录内容复制到位于工作目录中的容器中
COPY . .

# 安装requirements.txt中的所有依赖项
RUN pip install --no-cache-dir -r requirements.txt

# 使端口8000可用于外界访问
EXPOSE 8000

# 定义环境变量
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 运行server.py时运行应用程序
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

FROM mcr.microsoft.com/windows/servercore:ltsc2019

EXPOSE 6379

ADD https://github.com/MicrosoftArchive/redis/releases/download/win-3.0.504/Redis-x64-3.0.504.zip C:/redis.zip

RUN powershell -Command "expand-archive -Path 'c:\redis.zip' -DestinationPath 'c:\redis'"
RUN del c:\redis.zip

CMD "C:/redis/redis-server.exe"

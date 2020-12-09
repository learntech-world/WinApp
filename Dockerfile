FROM mcr.microsoft.com/dotnet/framework/sdk:4.6

WORKDIR /app

COPY WinApp/ .
RUN dotnet restore
RUN dotnet build -c Release -o out
ENTRYPOINT ["/app/out/WinApp.exe"]

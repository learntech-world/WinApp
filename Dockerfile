FROM docker pull mcr.microsoft.com/dotnet/framework/aspnet:4.8

WORKDIR /app

COPY WinApp/ .
RUN dotnet restore
RUN dotnet build -c Release -o out
ENTRYPOINT ["/app/out/WinApp.exe"]

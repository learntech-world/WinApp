FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build

WORKDIR /app

COPY *.sln .
COPY WinApp/*.csproj ./WinApp/
RUN nuget restore

COPY WinApp/. ./WinApp/
WORKDIR /app/WinApp
RUN msbuild /p:Configuration=Release

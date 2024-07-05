FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env
#docker pull mcr.microsoft.com/dotnet/aspnet

WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY ../engine/examples ./
RUN dotnet publish -c Release -o out

# Build runtime image
# https://hub.docker.com/r/ubuntu/dotnet-aspnet/tags
FROM ubuntu/dotnet-aspnet:8.0_edge

WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "aspnetapp.dll"]

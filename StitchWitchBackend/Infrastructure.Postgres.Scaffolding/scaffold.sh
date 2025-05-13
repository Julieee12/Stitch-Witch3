#!/bin/bash
set -a
source .env
set +a

dotnet ef dbcontext scaffold \
  #This variable is read from the .env file in the current directory
  #This file is not uploaded to Github as it contains sensitive info
  #To use, simply create a .env file in this directory
  #And add the contents: CONN_STR="*the dotnet formated connection string*"
  $CONN_STR \
  Npgsql.EntityFrameworkCore.PostgreSQL \
  --output-dir ../Core.Domain/Entities \
  --context-dir . \
  --context StitchWitchDbContext \
  --no-onconfiguring \
  --namespace Core.Domain.Entities \
  --context-namespace  Infrastructure.Postgres.Scaffolding \
  --force
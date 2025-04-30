#!/bin/bash
set -a
source .env
set +a

dotnet ef dbcontext scaffold \
  $CONN_STR \
  Npgsql.EntityFrameworkCore.PostgreSQL \
  --output-dir ../Core.Domain/Entities \
  --context-dir . \
  --context StitchWitchDbContext \
  --no-onconfiguring \
  --namespace Core.Domain.Entities \
  --context-namespace  Infrastructure.Postgres.Scaffolding \
  --force
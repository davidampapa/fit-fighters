# FIT Fighters Backend

This is a fullstack application for managing and organizing combat sports tournaments under the **FIT Fighters** banner.

## 🛠️ Requirements

- Docker & Docker Compose
- Git

---

## 🚀 Quick Start

### 1. Clone the repository

```bash
git clone git@github.com:davidampapa/fit-fighters.git
cd fit-fighters
```

### 2. Initialize submodules (frontend & backend)

```bash
git submodule update --init --recursive
```

### 3. Start the project with Docker Compose

```bash
docker compose up --build
```

> The application will be available at:
> - Backend: [http://localhost:8080](http://localhost:8080)
> - Frontend: [http://localhost:3000](http://localhost:3000)

---

## 💾 Load sample data into the database

The project relies on Spring to create the schema. To manually insert test data:

### 1. Check running containers

```bash
docker ps
```

→ Identify the container running PostgreSQL (e.g., `fit-fighters-postgres-1`)

### 2. Copy `data.sql` into the container

```bash
docker cp init-db-data/data.sql fit-fighters-postgres-1:/data.sql
```

### 3. Execute SQL script inside the database

```bash
docker exec -i fit-fighters-postgres-1 psql -U postgres -d fitfighters_database -f /data.sql
```

✅ This will insert sample records (`fighters`, `places`, `fights`, etc.).

---

## 🧪 Sample API Requests

### ➕ Create a new fighter

```http
POST /api/fighters
Content-Type: application/json

{
  "firstName": "John",
  "lastName": "Doe",
  "weightDivision": "Lightweight",
  "age": 28,
  "winCount": 5,
  "loseCount": 2,
  "drawCount": 1,
  "active": true
}
```

### 🔍 Get all fights

```http
GET /api/fights
```

---

## 🗂️ Project Structure

```
fit-fighters/
├── fit-fighters-backend/   # Spring Boot application
├── fit-fighters-frontend/  # React frontend
├── init-db-data/           # SQL scripts for database seeding
└── docker-compose.yml      # Docker infrastructure
```
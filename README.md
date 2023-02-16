# API - Sistema de Agenda

## **Fazer login**

#### HTTP Request

`GET /users/login`

#### HTTP Params

| Parâmetro | Tipo   | Descrição       | Obrigatório ✅/ Opcional ❌ |
| --------- | ------ | --------------- | --------------------------- |
| username  | string | Nome de usuário | ✅                          |
| password  | string | Nome de usuário | ✅                          |

#### HTTP Response

> Status 204 No Content

---

## **Fazer logout**

`GET /users/:id/logout`

#### HTTP Params

| Parâmetro          | Tipo   | Descrição                      | Obrigatório ✅/ Opcional ❌ |
| ------------------ | ------ | ------------------------------ | --------------------------- |
| id (Path Variable) | string | ID de identificação do usuário | ✅                          |

#### HTTP Response

> Status 204 No Content

---

## **Fazer cadastro de usuário**

`POST /users`

#### HTTP Request Body

```json
{
  "name": "string",
  "email": "string",
  "password": "string"
}
```

#### HTTP Response

> Status 200 OK

```json
{
  "id": "string", // gerado automaticamente
  "name": "string",
  "email": "string",
  "password": "string",
  "status": "number" // 0 - deslogado, 1 - logado, 2 - deletado
}
```

---

## **Deletar conta de usuário**

`DELETE /users/:id`

#### HTTP Params

| Parâmetro          | Tipo   | Descrição                      | Obrigatório ✅/ Opcional ❌ |
| ------------------ | ------ | ------------------------------ | --------------------------- |
| id (Path Variable) | string | ID de identificação do usuário | ✅                          |

#### HTTP Response

> Status 200 OK

---

## **Atualizar conta de usuário**

`PATCH /users/:id`

| Parâmetro          | Tipo   | Descrição                      | Obrigatório ✅/ Opcional ❌ |
| ------------------ | ------ | ------------------------------ | --------------------------- |
| id (Path Variable) | string | ID de identificação do usuário | ✅                          |

#### HTTP Request Body

```json
{
  "name": "string",
  "email": "string",
  "password": "string",
  "status": "number"
}
```

#### HTTP Response

> Status 200 OK

```json
{
  "id": "string",
  "name": "string",
  "email": "string",
  "password": "string",
  "status": "number" // 0 - deslogado, 1 - logado, 2 - deletado
}
```

---

## **Buscar por id a conta de usuário**

`GET /users/:id`

| Parâmetro          | Tipo   | Descrição                      | Obrigatório ✅/ Opcional ❌ |
| ------------------ | ------ | ------------------------------ | --------------------------- |
| id (Path Variable) | string | ID de identificação do usuário | ✅                          |

#### HTTP Response

> Status 200 OK

```json
{
  "id": "string",
  "name": "string",
  "email": "string",
  "password": "string",
  "status": "number" // 0 - deslogado, 1 - logado, 2 - deletado
}
```

---

## **Cadastrar evento**

`POST /users/:id/events`

| Parâmetro          | Tipo   | Descrição                      | Obrigatório ✅/ Opcional ❌ |
| ------------------ | ------ | ------------------------------ | --------------------------- |
| id (Path Variable) | string | ID de identificação do usuário | ✅                          |

#### HTTP Request Body

```json
{
  "title": "string",
  "datetime": "datetime",
  "description": "string"
}
```

#### HTTP Response

> Status 200 OK

```json
{
  "id": "string",
  "title": "string",
  "datetime": "datetime",
  "description": "string",
  "status": "number" // 0 - pendente, 1 - cancelado
}
```

---

## **Deletar evento**

`DELETE /users/:id/events/:eventid`

| Parâmetro               | Tipo   | Descrição                      | Obrigatório ✅/ Opcional ❌ |
| ----------------------- | ------ | ------------------------------ | --------------------------- |
| id (Path Variable)      | string | ID de identificação do usuário | ✅                          |
| eventId (Path Variable) | string | ID de identificação do evento  | ✅                          |

#### HTTP Response

> Status 200 OK

---

## **Atualizar evento**

`PATCH /users/:id/events/:eventid`

| Parâmetro               | Tipo   | Descrição                      | Obrigatório ✅/ Opcional ❌ |
| ----------------------- | ------ | ------------------------------ | --------------------------- |
| id (Path Variable)      | string | ID de identificação do usuário | ✅                          |
| eventId (Path Variable) | string | ID de identificação do evento  | ✅                          |

#### HTTP Request Body

```json
{
  "title": "string",
  "datetime": "datetime",
  "description": "string",
  "status": "number"
}
```

#### HTTP Response

> Status 200 OK

```json
{
  "id": "string",
  "title": "string",
  "datetime": "datetime",
  "description": "string",
  "status": "number" // 0 - pendente, 1 - cancelado
}
```

---

## **Visualizar eventos por dia**

`GET /users/:id/events?day=[date]`

| Parâmetro          | Tipo   | Descrição                                  | Obrigatório ✅/ Opcional ❌ |
| ------------------ | ------ | ------------------------------------------ | --------------------------- |
| id (Path Variable) | string | ID de identificação do usuário             | ✅                          |
| day                | date   | Data do dia desejado no formato dd-mm-yyyy | ✅                          |

#### HTTP Response

> Status 200 OK

```json
[
  {
    "id": "string",
    "title": "string",
    "datetime": "datetime",
    "description": "string",
    "status": "number" // 0 - pendente, 1 - cancelado
  }
  //...
]
```

---

## **Visualizar eventos por mês e semana**

`GET /users/:id/events?startDate=[date]&endDate=[date]`

| Parâmetro          | Tipo   | Descrição                                                    | Obrigatório ✅/ Opcional ❌ |
| ------------------ | ------ | ------------------------------------------------------------ | --------------------------- |
| id (Path Variable) | string | ID de identificação do usuário                               | ✅                          |
| startDate          | date   | Data do dia inicial de datas desejadas no formato dd-mm-yyyy | ✅                          |
| endDate            | date   | Data do dia final de datas desejadas no formato dd-mm-yyyy   | ✅                          |

#### HTTP Response

> Status 200 OK

```json
[
  {
    "id": "string",
    "title": "string",
    "datetime": "datetime",
    "description": "string",
    "status": "number" // 0 - pendente, 1 - cancelado
  }
  //...
]
```

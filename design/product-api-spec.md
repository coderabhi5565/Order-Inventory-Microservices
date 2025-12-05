Product Service – API Specification
Purpose

Product-Service product data manage karta hai.
Ye service products ko create, update, delete, fetch, list aur bulk fetch provide karti hai.

1. Create Product

POST /api/v1/products

Description: Naya product create karta hai.

Fields Required:

sku (unique)

name

price

Response Codes:

201 Created

400 Bad Request

409 Conflict (duplicate SKU)

2. Get Product by ID

GET /api/v1/products/{id}

Responses:

200 OK

404 Not Found

3. Get Product by SKU

GET /api/v1/products/sku/{sku}

4. Update Product

PUT /api/v1/products/{id}

Editable Fields:

name

price

description

category

Restrictions:

SKU cannot change

Price cannot be negative

5. Soft Delete Product

DELETE /api/v1/products/{id}

Soft delete → product active=false

6. List Products (with Filters + Pagination)

GET /api/v1/products

Query Params:

page

size

q (name or sku contains)

category

minPrice

maxPrice

active

7. Bulk Fetch Products

GET /api/v1/products/bulk?ids=id1,id2,id3

Return minimal fields: id, sku, name, price
finally api design done

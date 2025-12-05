Product Table – Design

Table Name: products

Columns

id — UUID, primary key

sku — varchar(64), unique

name — varchar(255), not null

description — text, optional

category — varchar(100)

price — decimal, not null

active — boolean, default true

created_at — timestamp

updated_at — timestamp

Rules

SKU unique

Name required

Price cannot be negative

Soft delete: active=false

MongoDB Northwind
===

A MongoDB version of the Microsoft Access 2010 Northwind sample database.

The Northwind database is an excellent tutorial schema for a 
small-business ERP, with customers, orders, inventory, purchasing, 
suppliers, shipping, employees, and single-entry accounting.

_The MongoDB Northwind database is created from
[MyWind](https://github.com/dalers/mywind); a MySQL version of Northwind._

Installation

Everything should be done automatically. In case anything fails:
---

    docker exec -it mongo_db /bin/bash
    git clone https://github.com/ID5003W-Industrial-AI/northwind
    cd northwind/mongodb-northwind
    ./mongo-import.sh

Verify Database
---

In the mongo shell or MONGOSH, run the following:

```bash
> show dbs
< admin      100.00 KiB
  config     108.00 KiB
  local       72.00 KiB
  northwind  684.00 KiB

> use northwind
< switched to db northwind

> show collections
```

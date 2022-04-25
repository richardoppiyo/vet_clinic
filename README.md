# vet_clinic

> This is a vetenary realtiona database.


## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

### Requirements
- PostgreSQL server installed and running
- psql installed

### Clone this repository

```bash
$ git clone https://github.com/richardoppiyo/vet_clinic.git
$ cd vet_clinic
```
1. Connect to your PostgreSQL server with `psql`
```bash
psql
```
2. Create the database `vet_clinic`
```bash
CREATE DATABASE vet_clinic;
```
3. Connect to your database `vet_clinic`
```bash
\c vet_clinic
```

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**



## Authors

👤 **Richard Opiyo**

- GitHub: [@richardoppiyo](https://github.com/richardoppiyo)
- Twitter: [@blessed_ricky](https://twitter.com/blessed_ricky)
- LinkedIn: [Richard Opiyo](https://linkedin.com/in/richardoppiyo)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
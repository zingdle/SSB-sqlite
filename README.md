# SSB-sqlite

Star Schema Benchmark (SSB) on SQLite

## How to use

```bash
git clone --recursive https://github.com/zingdle/SSB-sqlite.git
cd SSB-sqlite
make
```

or set a different scale factor with

```bash
SCALE_FACTOR=10 make
```

This generates database `SSB.db`.

## Credit

The repo is build upon these open-source projects. Thanks for their wonderful work!

- `query/` and `sqlite-ddl.sql` are modified from [ssb-tools](https://github.com/eyalroz/ssb-tools). [BSD 3-Clause License](ssb-tools-LICENSE)

- [ssb-dbgen](https://github.com/eyalroz/ssb-dbgen)

- Other files are modified from [TPCH-sqlite](https://github.com/lovasoa/TPCH-sqlite). [MIT License](TPCH-sqlite-LICENSE)

- You may also interested in [ssb-postgres](https://github.com/nuko-yokohama/ssb-postgres)

Please refer to their README for more information.

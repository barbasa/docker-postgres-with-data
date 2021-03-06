# How to populate the data container

* Find your data container

```docker ps -a```

* Copy the pg data locally

```docker cp <data_container_id>:/var/lib/postgresql/data ./pgdata```

* Populate host dir with container pg data

```docker run --rm -v "$(pwd)/pgdata":/var/lib/postgresql/data --name postgres-ponch -p 5432:5432 postgres```

* Build container data

```docker build -t postgres-data .```

* Tag new image created

```docker tag e03262b61fd5 barbasa/postgres-data:latest```

* ...and push

```docker push barbasa/postgres-data```

# How to populate the data container

Populate external dir with pg data

```docker run --rm -v <absolute_path_of_host_data_dir>:/var/lib/postgresql/data --name postgres-ponch -p 5432:5432 postgres```

Build container data

```docker build -t postgres-data .```

Tag new image created

```docker tag e03262b61fd5 barbasa/postgres-data:latest```

...and push

```docker push```

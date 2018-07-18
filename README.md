# midusi

Entregas de Minería de Datos Usando Sistemas Inteligentes, Facultad de Informatica, UNLP.

## Dependencias

Algunos de los scripts utilizados se encuentran escritos en R
por lo que necesitamos un ambiente para correr funciones de ploteo,
visualización de datos, etc. Para esto utilizamos [RStudio](https://www.rstudio.com).

La utilización del script `rstudio` permite levantar un ambiente dockerizado
de RStudio utilizando como directorio de trabajo un directorio ingresado o
el directorio actual por defecto.

```sh
$ git clone https://github.com/ulises-jeremias/midusi.git
$ cd midusi
$ ./rstudio
```

Una vez ejecutado el script el ambiente puede ser accedido en `localhost:8787`.
En caso de querer detener la ejecución del ambiente puede ejecutarse:

```sh
$ ./rstudio --stop
```

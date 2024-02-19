Escribe las consultas XQuery que permitan obtener la siguiente información:
1. Título y editorial de todos los libros.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y la editorial de cada libro deben estar separados por un guión medio (-).

for $x in /biblioteca/libros/libro
return <libro>{$x/titulo/text()} - {$x/editorial/text()}</libro>



2. El título de todos los libros de menos de 400 páginas.
* Se debe obtener únicamente los datos, sin etiquetas.

for $libro in /biblioteca/libros/libro[number(paginas)<400]
return count ($libro )

3. La cantidad de libros de más de 400 páginas.
for $libro in /biblioteca/libros/libro[number(paginas)>400]
return count ($libro )

4. Una lista HTML con el título de los libros de la editorial O'Reilly Media ordenados por título.

<ul>
for $libro in /biblioteca/libros/libro
where $libro/editorial = "O'Reilly Media"
return <li>$libro/titulo/text()</li>
</ul>

5. Título y editorial de los libros de 2018 y 2019.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y la editorial deben ir dentro de los elementos <titulo> y <editorial> respectivamente.

<libros>
{
  for $libro in /biblioteca/libros/libro
  where $libro/@publicacion = "2018" or $libro/@publicacion = "2019"
  return
    <libro>
      <titulo>{data($libro/titulo)}</titulo>
      <editorial>{data($libro/editorial)}</editorial>
    </libro>
}
</libros>

6. Título y editorial de los libros con más de un autor.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y la editorial deben ir dentro de los elementos <titulo> y <editorial> respectivamente.
 
 for $libro in /biblioteca/libros/libro
  where count($libro/autor) > 1
  return
    <libro>
      <titulo>{data($libro/titulo)}</titulo>
      <editorial>{data($libro/editorial)}</editorial>
    </libro>

7. Título y año de publicación de los libros que tienen versión electrónica.
* Los datos de cada libro deben estar dentro de un elemento <libro>.
* El título y el año de publicación deben ir dentro de los elementos <titulo> y <fecha-publicacion> respectivamente.
for 
$libro in /biblioteca/libros/libro
where
$libro/edicionElectronica
return 
<libro>
{$libro/titulo}
<fecha-publicacion>{data($libro/publicacion)}</fecha-publicacion>
</libro>

8. Título de los libros que no tienen versión electrónica.
* Se debe obtener únicamente los datos, sin etiquetas.
for $libro in /biblioteca/libros/libro
where not($libro/edicionElectronica)
return $libro/titulo/text()

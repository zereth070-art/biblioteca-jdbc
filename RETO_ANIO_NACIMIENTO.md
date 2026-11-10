# Reto: año de nacimiento del autor — guía de implementación

La base ya está limpia y alineada con el enunciado (sin `editorial`).
El reto **no está implementado** a propósito: el enunciado pide que el modelo, DTO,
mapper, repositorio y vistas los escribas tú. Aquí tienes el recorrido completo.

## Orden recomendado

1. `schema.sql` y `data.sql`
2. `model/Autor`
3. `dto/AutorDto` + `messages.properties`
4. `mapper/AutorMapper`
5. `repository/AutorRepositoryJdbc`
6. `autores/formulario.html` y `autores/lista.html`
7. Probar

---

## 1. `schema.sql`

En `CREATE TABLE autor`, añade la columna:

```sql
anio_nacimiento INT NOT NULL
```

> ⚠️ Si la pones `NOT NULL`, actualiza **a la vez** `AutorRepositoryJdbc.save()` y
> `update()` para escribir la columna. Si no, al crear un autor fallará porque el
> `INSERT` no envía `anio_nacimiento`.

## 2. `data.sql`

Cambia los `INSERT` de autor para incluir el año:

```sql
INSERT INTO autor (nombre, anio_nacimiento) VALUES ('Gabriel García Márquez', 1927);
```

Años que pide el enunciado:

| Autor | Año |
|---|---:|
| Gabriel García Márquez | 1927 |
| Julio Cortázar | 1914 |
| Mario Vargas Llosa | 1936 |
| Isabel Allende | 1942 |
| Carmen Laforet | 1921 |
| Ana María Matute | 1925 |
| Miguel Delibes | 1920 |
| Almudena Grandes | 1960 |
| Elena Poniatowska | 1932 |

## 3. `model/Autor.java`

Añade el campo:

```java
private Integer anioNacimiento;
```

`@AllArgsConstructor` cambia de firma al añadir el campo. Busca los `new Autor(...)`
en `AutorMapper` y `AutorRepositoryJdbc` y actualízalos.

## 4. `dto/AutorDto.java`

Añade el campo con validaciones:

- `@NotNull` → obligatorio
- `@Min(1000)` y `@Max(2026)` → rango permitido

Usa claves de mensaje, por ejemplo:

```java
@NotNull(message = "{autor.anio.obligatorio}")
@Min(value = 1000, message = "{autor.anio.rango}")
@Max(value = 2026, message = "{autor.anio.rango}")
private Integer anioNacimiento;
```

## 5. `messages.properties`

Añade las dos claves:

```properties
autor.anio.obligatorio=El año de nacimiento es obligatorio
autor.anio.rango=Debe estar entre 1000 y 2026
```

## 6. `mapper/AutorMapper.java`

- En `toDto`: copia el año del `Autor` al `AutorDto`.
- En `toModelEntity`: pásalo al constructor de `Autor`.

## 7. `repository/AutorRepositoryJdbc.java`

- `findById` y `findAll`: añade `anio_nacimiento` al `SELECT`.
- `save`: `INSERT INTO autor (nombre, anio_nacimiento) VALUES (?, ?)` y
  `ps.setInt(2, autor.getAnioNacimiento())`.
- `update`: `UPDATE autor SET nombre = ?, anio_nacimiento = ? WHERE id = ?`.
- `mapRow`: lee la columna y pásala al constructor de `Autor`.

## 8. `autores/formulario.html`

Añade el campo debajo de `nombre`:

```html
<div class="mb-4">
  <label for="anioNacimiento" class="form-label">Año de nacimiento</label>
  <input type="text" inputmode="numeric" th:field="*{anioNacimiento}" class="form-control"
         th:classappend="${#fields.hasErrors('anioNacimiento')} ? 'is-invalid'">
  <div class="invalid-feedback" th:errors="*{anioNacimiento}">Error</div>
</div>
```

> Usa `type="text"`, no `type="number"`: con `number`, el navegador envía vacío un
> texto no válido y el servidor no puede mostrar el error (la misma pista que en el
> filtro de años).

## 9. `autores/lista.html`

- Añade `<th>Nacimiento</th>` después de `<th>Nombre</th>`.
- Añade `<td th:text="${a.anioNacimiento}">1927</td>` en cada fila.
- Cambia el `colspan` de la fila vacía de `3` a `4`.

## 10. Pruebas

- `/autores` muestra la columna **Nacimiento** con los años de `data.sql`.
- Alta con el año vacío → error junto al campo, sin perder el nombre.
- Año `999` o `2027` → error de rango.
- Año válido → se guarda y aparece en el listado.
- Editar un autor → el formulario llega con su año relleno.
- `mvnw` compila y `/h2-console` sigue conectando a `bibliotecadb`.

---

## Archivos que NO hay que tocar

- `Libro`, `LibroDto`, `LibroMapper`, `LibroRepositoryJdbc`, `LibroService`,
  `LibroController`: el reto es solo de autores.
- `FiltroLibrosDto`: no tiene relación con el año de nacimiento.

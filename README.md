# outer-joins-ministore
## ¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
Utilice LEFT JOIN en la Consulta 1 para poder visualizar toda la tabla de productos sin perder ningun dato. En caso de utilizar INNER JOIN perderia los registros NULOS, es decir, los productos que no tuvieron ventas.
## ¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
Utilice RIGHT JOIN en la Consulta 2 para poder ver los posibles productos que no cruzaban con mi registro. La tabla prodcutos estaba a la izquierda y ventas a la derecha para mantener todos sus datos.
## ¿Qué representan los valores NULL en cada resultado? Explicá con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
Los valores NULL en cada resultado representan que ese dato no forma parte de una de las 2 tablas en cuestion.
En el caso de la Consulta 1 tenemos productos dentro de la tabla de productos que no tuvieron ventas, por lo tanto en ventas, su venta_id es NULL:
<img width="342" height="257" alt="image" src="https://github.com/user-attachments/assets/dbdc081a-dfdb-472f-aa14-fbfea8e3008d" />

En el caso de la Consulta 2, que producto_id de productos sea NULL quiere decir que no es producto registrado dentro de la tabla productos.
<img width="285" height="257" alt="image" src="https://github.com/user-attachments/assets/0f354d6a-ed10-4ba0-8f55-6d7f58c6eac6" />

## ¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
Usaria FULL OUTER JOIN en un caso donde quiera visualizar toda la informacion dispoinble, tener un panaroma general.

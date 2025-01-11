# Algoritmo Proyecto 1

Este proyecto presenta un algoritmo que calcula el precio final de un producto considerando cupones de descuento, impuestos, cantidad comprada, peso del producto y el costo de envío basado en el destino.

## Descripción

Este algoritmo solicita varios datos al usuario, como el producto seleccionado, el cupon de descuento, los impuestos, la cantidad de productos, el peso y el destino del envío. A partir de esta información, realiza los siguientes cálculos:

1. **Cálculo del precio original** basado en el producto seleccionado.
2. **Aplicación del cupón de descuento**, si corresponde.
3. **Cálculo de impuestos** sobre el precio descontado.
4. **Descuento adicional por cantidad**, si aplica.
5. **Cálculo del costo de envío** basado en el peso y el destino.
6. **Determinación del precio final** considerando todos los factores anteriores.

## Ejemplo de Ejecución

```text
Selecciona el producto: Para zapatillas ingesa 1. Para sandalias ingresa 2. Para botas ingresa 3.
> 2
Ha escogido: Sandalias, El precio del producto es: $150

Ingrese cupon de descuento en % (si aplica):
> 10

Ingrese impuestos en %:
> 19

Ingrese cantidad:
> 3

Tiene un descuento por cantidad, ingrese descuento en %:
> 5

Ingrese peso en kg:
> 1.5

Seleccione destino de envio: Para Maipú ingrese 1. Para Vitacura ingrese 2. Para Ñuñoa ingrese 3:
> 2

DESGLOSE:
Precio original: $150
Tu cupon fue : $15
Precio con cupon de descuento: $135
Precio mas impuestos: $160.65
Tu descuento de cantidad fue: $8.03
Precio con descuento por cantidad: $152.62
Costo de envio: $14.5
Precio final: $472.36
---------------------------
```

## Personalización
Puedes adaptar este algoritmo según tus necesidades:

- **Productos y Precios**: Agrega o modifica productos y sus precios.
- **Descuentos e Impuestos**: Ajusta las reglas de cálculo de descuentos e impuestos.
- **Destino y Envio**: Cambia las opciones de destino o los costos fijos de envío.

# Hospital_Visualization
Hospitals Visualization 

Descargar Librerías G4P: http://www.lagers.org.uk/g4p/download.html y grafica: https://github.com/jagracar/grafica 

La vista por defecto (escala de blanco y negro), consiste en la evaluación a nivel nacional, es decir, con todos los criterios (categorías agregados en una sola medida), se selecciona a mano izquierda la categoría (criterio) del que se quiera obtener visualización (cada cual tiene a su lado un checkbox que indica que está seleccionada dicha categoría), pero se puede regresar a la vista inicial, seleccionando el Botón del título de la aplicación.

Cada una de las capitales de cada estado está representada por un GImageButton (de la librería G4P, tal como los botones anteriormente mencionados), con el cual se puede acceder a la ventana del estado correspondiente, que contiene la gráfica en el que las abscisas son las categorías, y las ordenadas contienen el rango de puntajes. Cada serie de puntos que está representado por un cuadrado de su color, es cada hospital de dicho estado.

Los datos obtenidos de la fuente de información https://data.medicare.gov/data/hospital-compare fueron "estandarizados" y "optimizados" con el PreProcesor.pde. También se hizo uso de la clase Tabla y de la clase Slurper(en especial para la obtención de datos geofráficos), así como la clase Place. La pestaña gui del proyecto, contiene los elementos de la librería G4P utilizados, así como las estructuras de datos necesarias para la adquisición de datos y verificación de condiciones para los Eventos relacionados a los Botones utilizados. Y la pestaña Hospital-Visualization además de tener los típicos setup y draw, contiene los EventHandlers necearios para la operación de la aplicación.

La parte de adquisición de datos geográficos está comentada ya que finalmente no se pudieron cargar con éxito los puntos adquiridos y además era muy costoso computacionalmente éste enfoque, ya que son alrededor de 4000 hospitales con los que se cuenta información, y sólamente cargar los 51 GImageButtons de las capitales de los estados es una gran carga para la aplicación y se ve disminuido el rendimiento del computador que aloja el sistema.

Finalmente, al seleccionar cada estado se carga una ventana de la lírería G4P, lo cual también es una carga significativa para el computador, aunque sólo muestre una sola (por supuesto, la correspondiente al estado seleccionado por su capital)., y allí se obtendrá la gráfica generada por la librería "grafica", para la gráfica por estado descrita anteriormente.








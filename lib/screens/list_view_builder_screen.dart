import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  //funcion del statefull widget
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Registra cualquier cambio que haya en la pantalla
    scrollController.addListener(() {
      //imprime los pixeles de la posicion en la que estoy y los pixeles de toda la pantalla 
      //print(' ${ scrollController.position.pixels }, ${ scrollController.position.maxScrollExtent }');
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent) {
        //add5();
        fetchData();
      }
    });
  }

  void add5(){
    final lastId = imagesIds.last;
    //Suma 5 al ultimo elemento del array imagesID
    imagesIds.addAll( [1,2,3,4,5].map( (e) => lastId + e ) );
    setState(() { });
  }

  //Para un simbolo de carga
  Future fetchData() async {
    if ( isLoading ) return;

    isLoading = true;
    setState(() {  });
    //Espera un tiempo
    await Future.delayed( const Duration( seconds: 2 ) );
    add5();
    isLoading = false;
    setState(() {  });

  }

  //Metodo para el onrefresh del widget refreshindicator
  Future<void> onRefresh() async {
    await Future.delayed( const Duration( seconds: 2 ) );
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add( lastId + 1 );
    add5();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    return Scaffold(
      // Widget para quitar los espacios arriba en el notch
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                //
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                    return FadeInImage(
                        // Imagen almacenada en el proyecto
                        placeholder: const AssetImage('assets/jar-loading.gif'),
                        // API Para imagenes aleatorias de prueba: https://picsum.photos/
                        // Le pasamos a la url la imagen con el numero del index del itembuilder
                        image: NetworkImage('https://picsum.photos/500/300?image=${ imagesIds[index] }'),
                        //Dimensiones de la imagen
                        width: double.infinity,
                        height: 300,
                        // Adaptamos la imagen a todo el espacio que tenga disponible
                        fit: BoxFit.cover,
                    );
                }
              ),
            ),
            
            if ( isLoading ) 
              //Widget para la posicion
              Positioned( 
                bottom: 15,
                left: ( size.width / 2 ) - 30,
                child: _LoadingIcon() 
              ),
            
            
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        //opacity para transparencia
        color: Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator( color: AppTheme.primary,),
      
    );
  }
}
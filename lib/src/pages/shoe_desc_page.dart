import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

import 'package:shoe_store_app/src/models/shoe_model.dart';
import 'package:shoe_store_app/src/widgets/custom_widgets.dart';
import 'package:shoe_store_app/src/helpers/helpers.dart';

class ShoeDescPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    changeStatusLight();

    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: 'shoe-1',
                child: CustomShoePrev(fullScreen: true)
              ),
              Positioned(
                top: 30,
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  highlightElevation: 0,
                  child: Icon(Icons.chevron_left, color: Colors.white, size: 40),
                  onPressed: () {
                    changeStatusDark();
                    Navigator.pop(context);
                  },

                )
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ShoeDesc(
                    title: shoeModel.title,
                    description: shoeModel.detail,
                  ),
                  _CustomButtonBuy(price: shoeModel.price),
                  _OptionColors(),
                  _ActionSettings()
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class _CustomButtonBuy extends StatelessWidget {
  final price;

  _CustomButtonBuy({
    @required this.price
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: <Widget>[
            Text('${this.price} \€',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              )),
              Spacer(),
              Bounce(
                delay: Duration(milliseconds: 500),
                from: 20,
                child: CustomButtonBuy(text: 'Comprar ahora', width: 120, height: 40,)
              )
          ],
        ),
      ),
    );
  }
}

class _OptionColors extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 90,
                  child: _ButtonColor(
                    color: Color(0xff880316),
                    index: 3,
                    img: 'assets/imgs/espltdred.png',
                    title: 'ESP LTD M-200FM, See Thru Red',
                    detail: 'El ESP LTD M-200FM en See Thru Red es un instrumento de ejecución rápida construido para tonos de alto rendimiento y sólidos como el rock. Tiene un mástil rápido con 24 trastes jumbo extra, diapasón plano de 350 mm de radio y perfil en U extra fino; estas especificaciones proporcionan una sensación de juego sin esfuerzo para un juego rápido. El cuerpo de caoba del M-200FM proporciona una tonalidad cálida con un sustain y una resonancia excelentes. La tonalidad del cuerpo se ve realzada por los humbuckers ESP que proporcionan una respuesta de frecuencia completa y son perfectos para música con altos niveles de ganancia, como el rock y el metal. El sistema de trémolo de doble bloqueo te permite hacer trucos de barra de golpe con la seguridad de que las cuerdas volverán a su posición de forma precisa cada vez que las pongas. La guitarra cuenta con un diseño de cabezal reversible de ESP LTD y está construida para ofrecer un alto rendimiento y sonidos potentes',
                    price: 508.00
                  )
                ),
                Positioned(
                  left: 60, 
                  child: _ButtonColor(
                    color: Color(0xffe6ea00),
                    index: 1,
                    img: 'assets/imgs/fenderltdyellow.png',
                    title: 'Fender LTD HM Strat MN, Frozen Yellow Panorama general',
                    detail: 'Pura Fender brujería. Entre en un mundo de metales de la más alta calidad con la Fender LTD HM Strat MN. Mostrar al mundo cómo suena una verdadera obra maestra. Tiene una serie de características impresionantes que le dan todo lo que necesita para crear riffs salvajes que gritan con agresión mientras mantienen una claridad prístina. Las humbucker pastillas de una sola bobina forman la columna vertebral de las locas posibilidades tonales de esta guitarra. Libera tus más oscuros deseos musicales.',
                    price: 1131.00
                  )
                ),
                Positioned(
                  left: 30,
                  child: _ButtonColor(
                    color: Color(0xff22054f),
                    index: 2,
                    img: 'assets/imgs/espltdpurple.png',
                    title: 'ESP LTD MH-1000NT, See Thru Purple',
                    detail: 'Una para los guitarristas de metal modernos. El ESP LTD MH-1000NT dedica cada aspecto de su diseño a la elite tonalidad, a la capacidad de reproducción en ampollas y al verdadero estilo único en su clase. Por eso es aclamado por los músicos de metal como una verdadera máquina trituradora. ESP sabe lo que se necesita para un rendimiento rápido, y el MH-1000NT es la personificación de todo lo que debería ser una guitarra metálica. Y más.',
                    price: 1079.00
                  )
                ),
                _ButtonColor(
                  color: Color(0xff364D56),
                  index: 4,
                  img: 'assets/imgs/espltdblack.png',
                  title: 'ESP LTD MH-10, Black',
                  detail: 'La ESP LTD MH-10 en negro es una guitarra de metal y rock de gran valor para los aspirantes a músicos que buscan un instrumento fácil de tocar y con un gran sonido. El mástil tiene 24 trastes extra-jumbo y un radio plano de 350mm para un control y una jugabilidad óptimos left hand. El mástil está montado en un cuerpo de madera de tilo bien equilibrado con contornos cómodos y un elegante doble cutaway que permite un fácil acceso a los trastes superiores para un solo de alto octanaje. El diseño de cuerpo de cuerdas proporciona una transferencia de vibración de cuerdas estable tuning y máxima, mientras que los humbuckers de doble diseño con ESP son unidades versátiles capaces de reproducir cualquier género de música que usted elija. Si está buscando una introducción de gran valor a la guitarra con un instrumento que no detenga su ejecución, la MH-10 es una guitarra versátil lista para tomar cualquier cosa que usted pueda darle.',
                  price: 224.50 
                ),
              ],
            ),
          ),
         
            CustomButtonBuy(
              text: 'Otras zapatillas',
              width: 170,
              height: 30,
              color: Color(0xffFFC675)
            )
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
   
   final Color color;
   final int index;
   final String img;
   final String title;
   final String detail;
   final double price;
   
   _ButtonColor({
     @required this.color,
     @required this.index,
     @required this.img,
     @required this.title,
     @required this.detail,
     @required this.price,
   });

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 200),
      duration: Duration(milliseconds: 500),
      child: GestureDetector(
        onTap: () {
          final shoeModel = Provider.of<ShoeModel>(context, listen: false);
          shoeModel.assetImg = this.img;
          shoeModel.title = this.title;
          shoeModel.detail = this.detail;
          shoeModel.price = this.price;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}

class _ActionSettings extends StatelessWidget {
  const _ActionSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _ButtonSetting(icon: Icon(Icons.favorite, color: Colors.red, size: 25)),
          _ButtonSetting(icon: Icon(Icons.add_shopping_cart, color: Colors.grey.withOpacity(0.4), size: 25)),
          _ButtonSetting(icon: Icon(Icons.settings, color: Colors.grey.withOpacity(0.4), size: 25))
        ],
      ),
    );
  }
}

class _ButtonSetting extends StatelessWidget {
  final Icon icon;

  _ButtonSetting({
    @required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0,10)
          )
        ]
      ),
      child: this.icon,
    );
  }
}

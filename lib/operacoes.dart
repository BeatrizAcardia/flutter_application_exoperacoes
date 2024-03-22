import 'dart:ffi';

import 'package:flutter/material.dart';

class operacoesEconversoes extends StatefulWidget {
  const operacoesEconversoes({super.key});

  @override
  State<operacoesEconversoes> createState() => _operacoesEconversoesState();
}

class _operacoesEconversoesState extends State<operacoesEconversoes> {

  TextEditingController valor1 = TextEditingController();
  TextEditingController valor2 = TextEditingController();

  String valorDigitado1 = "";
  String valordigitado2 = "";
  String resultado = "";

  double soma = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(centerTitle: true,
        title: Text("♡ Operações ♡"), 
        backgroundColor: Color.fromARGB(255, 220, 176, 240),
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          
          SizedBox(height: 50,),

          Text("Operações para aprendizado do uso do widget TextField ;)", textAlign: TextAlign.center, style: TextStyle(
            fontSize: 19,
          ),),

          SizedBox(height: 20,),

          TextField(
                controller: valor1,
                onChanged: (value) { //identifica mudaças da caixa texto, muito usado em buscas
                  print(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                  filled: true,
                  fillColor: Color.fromARGB(131, 248, 152, 243),
                  labelText: "Digite aqui o valor 1...",
              ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: valor2,
                onChanged: (value) { //identifica mudaças da caixa texto, muito usado em buscas
                  print(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                  filled: true,
                  fillColor: Color.fromARGB(131, 248, 152, 243),
                  labelText: "Digite aqui o valor 2...",
              ),
              ),

              SizedBox(height: 10,),

              Row(children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 153, 0, 255),
                ),
                  onPressed: () {
                valorDigitado1 = valor1.text;
                valordigitado2 = valor2.text;

                double soma = 0;

                soma = double.parse(valorDigitado1) + double.parse(valordigitado2);
                resultado = soma.toString();
                setState(() {
                  
                });

              }, child: Text("+", style: TextStyle(fontSize: 20, color: Colors.white))),


               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 153, 0, 255),
                ),
                onPressed: () {
                valorDigitado1 = valor1.text;
                valordigitado2 = valor2.text;

                double subt = 0;

                subt = double.parse(valorDigitado1) - double.parse(valordigitado2);
                resultado = subt.toString();
                setState(() {
                  
                });

              }, child: Text("-", style: TextStyle(fontSize: 25, color: Colors.white))),

               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 153, 0, 255),
                ),
                onPressed: () {
                valorDigitado1 = valor1.text;
                valordigitado2 = valor2.text;
                double mult = 0;
                mult = double.parse(valorDigitado1) * double.parse(valordigitado2);
                resultado = mult.toString();
                setState(() {
                  
                });

              }, child: Text("*", style: TextStyle(fontSize: 20, color: Colors.white))),

               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 153, 0, 255),
                ),
                onPressed: () {
                valorDigitado1 = valor1.text;
                valordigitado2 = valor2.text;
                double vezes = 0;
                vezes = double.parse(valorDigitado1) / double.parse(valordigitado2);
                resultado = vezes.toString();
                setState(() {
                  
                });
              }, child: Text("/", style: TextStyle(fontSize: 18, color: Colors.white))),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 153, 0, 255),
                ),
                onPressed: () {
                valor1.text = "";
                valor2.text = "";
                resultado="";

                setState(() {
                  
                });

              }, child: Text("CE", style: TextStyle(fontSize: 20, color: Colors.white))),
              ],),

              SizedBox(height: 10,),

              Text("Resultado: " + resultado, style: TextStyle(fontSize: 20,),)

        ],),
      ),
    );
  }
}